unit IWBSTabControl;

interface

uses
  SysUtils, Classes, StrUtils,
  IWApplication, IWBaseRenderContext, IWControl, IWBaseInterfaces,
  IWCompTabControl,IWBSCommon, IWBSRegionCommon,
  IWRenderContext, IWHTMLTag,  IWXMLTag, IW.Common.RenderStream, IWBSCustomEvents;

type
  TIWBSCloseTabAction = (bstabFree, bstabHide, bstabNone);
  TIWBSTabCloseEvent = procedure(Sender:TObject; aTab:TIWTabPage; var aCloseAction:TIWBSCloseTabAction) of object;

  TIWBSTabOptions = class(TPersistent)
  private
    FFade: boolean;
    FPills: boolean;
    FJustified: boolean;
    FStacked: boolean;
    FCloseButtons: Boolean;
    procedure SetCloseButtons(const Value: Boolean);
  public
    constructor Create(AOwner: TComponent);
    procedure Assign(Source: TPersistent); override;
  published
    property Fade: boolean read FFade write FFade default false;
    property Pills: boolean read FPills write FPills default false;
    property Justified: boolean read FJustified write FJustified default false;
    property Stacked: boolean read FStacked write FStacked default false;
    property CloseButtons:Boolean read FCloseButtons write SetCloseButtons default False;
  end;

  TIWBSTabControl = class(TIWTabControl, IIWInputControl, IIWBSComponent, IIWBSContainer)
  private
    FMainID: string;
    FOldCss: string;
    FOldStyle: string;
    FOldVisible: boolean;
    FOldActivePage: integer;

    FActivePage: Integer;
    FAsyncRefreshControl: boolean;
    FRendered: boolean;
    FCustomAsyncEvents: TIWBSCustomAsyncEvents;
    FCustomRestEvents: TIWBSCustomRestEvents;
    FGridOptions: TIWBSGridOptions;
    FRegionDiv: TIWHTMLTag;
    FScript: TStringList;
    FScriptInsideTag: boolean;
    FScriptParams: TIWBSScriptParams;
    FStyle: TStringList;
    FTabOptions: TIWBSTabOptions;

    FOnAfterRender: TNotifyEvent;
    FOnAfterAsyncChange: TNotifyEvent;
    FOnTabClose: TIWBSTabCloseEvent;

    function TabOrderToTabIndex(ATabOrder: integer): integer;
    procedure CheckActiveVisible;
    function HTMLControlImplementation: TIWHTMLControlImplementation;
    function RegionDiv: TIWHTMLTag;

    procedure SetGridOptions(const Value: TIWBSGridOptions);
    procedure SetTabOptions(const Value: TIWBSTabOptions);
    procedure SetScript(const AValue: TStringList);
    procedure SetScriptParams(const AValue: TIWBSScriptParams);
    function GetStyle: TStringList;
    procedure SetStyle(const AValue: TStringList);
    procedure OnScriptChange(ASender : TObject);
    procedure OnStyleChange(ASender : TObject);
    function GetCustomAsyncEvents: TIWBSCustomAsyncEvents;
    function GetCustomRestEvents: TIWBSCustomRestEvents;
    procedure SetCustomAsyncEvents(const Value: TIWBSCustomAsyncEvents);
    procedure SetCustomRestEvents(const Value: TIWBSCustomRestEvents);
    function GetScript: TStringList;
    function GetScriptParams: TIWBSScriptParams;
    function GetScriptInsideTag: boolean;
    procedure SetActivePage(const Value: Integer);
    procedure SetScriptInsideTag(const Value: boolean);
    function GetAfterRender: TNotifyEvent;
    procedure SetAfterRender(const Value: TNotifyEvent);
    procedure DoOnTabClose(aParams:TStringList);
    procedure SetOnTabClose(const Value: TIWBSTabCloseEvent);
    procedure DoOnAsyncChange(AParams:TStringList);
    function GetActiveTabPage: TIWTabPage;
    procedure SetActiveTabPage(const Value: TIWTabPage);
  protected
    procedure SetValue(const AValue: string);
    function InitContainerContext(AWebApplication: TIWApplication): TIWContainerContext; override;
    procedure InternalRenderScript(AContext: TIWCompContext; const AHTMLName: string; AScript: TStringList); virtual;
    procedure InternalRenderStyle(AStyle: TStringList); virtual;
    procedure InternalBeforeRenderControls(var aRenderStream: TIWRenderStream); virtual;
    procedure InternalAfterRenderControls(var aRenderStream: TIWRenderStream); virtual;
    function RenderAsync(AContext: TIWCompContext): TIWXMLTag; override;
    procedure RenderComponents(AContainerContext: TIWContainerContext; APageContext: TIWBasePageContext); override;
    function RenderCSSClass(AComponentContext: TIWCompContext): string; override;
    function RenderHTML(AContext: TIWCompContext): TIWHTMLTag; override;
    procedure RenderScripts(AComponentContext: TIWCompContext); override;
    function RenderStyle(AContext: TIWCompContext): string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AsyncRefreshControl;
    procedure ResetAsyncRefreshControl;
    procedure AsyncRemoveControl;
    function GetTabPageCSSClass(ATabPage: TComponent): string;
    function IsStoredCustomAsyncEvents: Boolean;
    function IsStoredCustomRestEvents: Boolean;
    function JQSelector: string;
    procedure SetFocus; override;
    procedure SetTabPageVisibility(ATabIndex: integer; Visible: boolean); overload;
    procedure SetTabPageVisibility(ATabPage: TIWTabPage; Visible: boolean); overload;
    function AddNewTab:TIWTabPage;
    property ActiveTabPage:TIWTabPage read GetActiveTabPage write SetActiveTabPage;
  published
    property ActivePage: Integer read FActivePage write SetActivePage;
    property Align;
    property BSGridOptions: TIWBSGridOptions read FGridOptions write SetGridOptions;
    property BSTabOptions: TIWBSTabOptions read FTabOptions write SetTabOptions;
    property ClipRegion default False;
    property CustomAsyncEvents: TIWBSCustomAsyncEvents read GetCustomAsyncEvents write SetCustomAsyncEvents stored IsStoredCustomAsyncEvents;
    property CustomRestEvents: TIWBSCustomRestEvents read GetCustomRestEvents write SetCustomRestEvents stored IsStoredCustomRestEvents;
    property ExtraTagParams;
    property LayoutMgr;
    property RenderInvisibleControls default False;
    property Script: TStringList read GetScript write SetScript;
    property ScriptInsideTag: boolean read GetScriptInsideTag write SetScriptInsideTag default True;
    property ScriptParams: TIWBSScriptParams read GetScriptParams write SetScriptParams;
    property Style: TStringList read GetStyle write SetStyle;
    property ZIndex default 0;

    // Occurs after component is rendered.
    property OnAfterRender: TNotifyEvent read GetAfterRender write SetAfterRender;

    // Occurs after component is changed on an Asyn call, it doesn't occurs if the control is fully rendered
    property OnAfterAsyncChange: TNotifyEvent read FOnAfterAsyncChange write FOnAfterAsyncChange;

    property OnHTMLTag;

    property OnTabClose:TIWBSTabCloseEvent read FOnTabClose write SetOnTabClose;

  end;

implementation

uses IWLists, IW.Common.System, IWBSutils, IWBSLayoutMgr, IWBSScriptEvents, IWBSGlobal;

{$region 'TIWBSTabOptions'}
constructor TIWBSTabOptions.Create(AOwner: TComponent);
begin
  FFade := False;
  FPills := False;
  FJustified := False;
  FStacked := False;
  FCloseButtons:=False;
end;

procedure TIWBSTabOptions.SetCloseButtons(const Value: Boolean);
begin
  if FCloseButtons <> Value then
    begin
      FCloseButtons := Value;
      { TODO 1 -oDELCIO -cIMPROVEMENT : Implemet UPDATEOPTIONS }
    end;
end;

procedure TIWBSTabOptions.Assign(Source: TPersistent);
begin
  if Source is TIWBSTabOptions then
    begin
      Fade := TIWBSTabOptions(Source).Fade;
      Pills := TIWBSTabOptions(Source).Pills;
      Justified := TIWBSTabOptions(Source).Justified;
      Stacked := TIWBSTabOptions(Source).Stacked;
    end
  else
    inherited;
end;
{$endregion}

{$region 'TIWBSTabControl'}
constructor TIWBSTabControl.Create(AOwner: TComponent);
begin
  inherited;
  FGridOptions := TIWBSGridOptions.Create;
  FAsyncRefreshControl := True;
  FRendered := False;
  FMainID := '';
  FScript := TStringList.Create;
  FScript.OnChange := OnScriptChange;
  FScriptInsideTag := True;
  FScriptParams := TIWBSScriptParams.Create;
  FScriptParams.OnChange := OnScriptChange;
  FStyle := TStringList.Create;
  FStyle.OnChange := OnStyleChange;
  FStyle.NameValueSeparator := ':';
  FTabOptions := TIWBSTabOptions.Create(Self);
  Height := 112;
  Width := 112;
end;

destructor TIWBSTabControl.Destroy;
begin
  FreeAndNil(FGridOptions);
  FreeAndNil(FScript);
  FreeAndNil(FScriptParams);
  FreeAndNil(FStyle);
  FreeAndNil(FTabOptions);
  inherited;
end;

procedure TIWBSTabControl.DoOnAsyncChange(AParams: TStringList);
begin
  inherited DoOnAsyncChange(AParams);
end;

procedure TIWBSTabControl.DoOnTabClose(aParams: TStringList);
var
  LTabIndex:Integer;
  LCloseAction:TIWBSCloseTabAction;
  LPage:TIWTabPage;
begin
  LCloseAction:= bstabHide;
  LTabIndex:= StrToIntDef(aParams.Values['page'], -1);
  if (LTabIndex > -1) and (LTabIndex < FPages.Count) then
    begin
      LPage:= TIWTabPage(FPages[LTabIndex]);
      if Assigned(FOnTabClose) then
        FOnTabClose(Self, LPage, LCloseAction);
      case LCloseAction of
        bstabFree: LPage.Free;
        bstabHide: LPage.Hide;
        //bstabNone: ;
      end;
      Self.AsyncRefreshControl;
    end;
end;

function TIWBSTabControl.JQSelector: string;
begin
  Result := '$("#'+HTMLName+'")';
end;

procedure TIWBSTabControl.SetFocus;
begin
  IWBSExecuteAsyncJScript(JQSelector+'.focus()');
end;

function TIWBSTabControl.AddNewTab: TIWTabPage;
var
  LTabOrder:Integer;
begin
  Result:= TIWTabPage.Create(Self);
  try
    Result.Title:= 'Page' + IntToStr(FPages.Count);
    Result.Name:= Self.Name + 'Page' + IntToStr(FPages.Count);
    LTabOrder:= FPages.Count;
    //Result.TabOrder:=  FPages.Count;
    //FPages.Add(Result);
    Result.Parent:= Self;
    Result.TabOrder:= LTabOrder;
    AsyncRefreshControl;
  except
    FreeAndNil(Result);
  end;
end;

procedure TIWBSTabControl.AsyncRefreshControl;
begin
  FAsyncRefreshControl := True;
  Invalidate;
end;

procedure TIWBSTabControl.ResetAsyncRefreshControl;
begin
  FAsyncRefreshControl := False;
end;

procedure TIWBSTabControl.AsyncRemoveControl;
begin
  TIWBSCommon.AsyncRemoveControl(HTMLName);
  FRendered := False;
end;

procedure TIWBSTabControl.SetGridOptions(const Value: TIWBSGridOptions);
begin
  FGridOptions.Assign(Value);
  invalidate;
end;

procedure TIWBSTabControl.SetOnTabClose(const Value: TIWBSTabCloseEvent);
begin
  FOnTabClose := Value;
end;

procedure TIWBSTabControl.SetValue(const AValue: string);
var
  LIndex: Integer;
begin
  if RequiresUpdateNotification(Parent) then
    UpdateNotifiedInterface(Parent).NotifyUpdate(Self,AValue);
  LIndex := StrToIntDef(AValue, 0);
  if (LIndex < 0) or (LIndex >= Pages.Count) then
    begin
      FActivePage := 0;
      FOldActivePage := -1;
    end
  else
    begin
      FActivePage := TIWTabPage(Pages[LIndex]).TabOrder;
      FOldActivePage := FActivePage;
    end;
end;

procedure TIWBSTabControl.SetTabOptions(const Value: TIWBSTabOptions);
begin
  FTabOptions.Assign(Value);
  invalidate;
end;

procedure TIWBSTabControl.OnScriptChange( ASender : TObject );
begin
  AsyncRefreshControl;
end;

procedure TIWBSTabControl.OnStyleChange( ASender : TObject );
begin
  Invalidate;
end;

function TIWBSTabControl.GetActiveTabPage: TIWTabPage;
begin
  if FActivePage < FPages.Count then
    Result:= TIWTabPage(FPages[FActivePage]);
end;

function TIWBSTabControl.GetAfterRender: TNotifyEvent;
begin
  Result := FOnAfterRender;
end;

function TIWBSTabControl.GetCustomAsyncEvents: TIWBSCustomAsyncEvents;
begin
  if FCustomAsyncEvents = nil then
    FCustomAsyncEvents := TIWBSCustomAsyncEvents.Create(Self);
  Result := FCustomAsyncEvents;
end;

function TIWBSTabControl.GetCustomRestEvents: TIWBSCustomRestEvents;
begin
  if FCustomRestEvents = nil then
    FCustomRestEvents := TIWBSCustomRestEvents.Create(Self);
  Result := FCustomRestEvents;
end;

procedure TIWBSTabControl.SetActivePage(const Value: Integer);
begin
  FActivePage := Value;
  Invalidate;
end;

procedure TIWBSTabControl.SetActiveTabPage(const Value: TIWTabPage);
var
  I: Integer;
begin
  for I := 0 to FPages.Count -1 do
    begin
      if TIWTabPage(FPages[I]) = Value then
        begin
          SetActivePage(I);
          Break;
        end;
    end;
end;

procedure TIWBSTabControl.SetAfterRender(const Value: TNotifyEvent);
begin
  FOnAfterRender := Value;
end;

procedure TIWBSTabControl.SetCustomAsyncEvents(const Value: TIWBSCustomAsyncEvents);
begin
  FCustomAsyncEvents.Assign(Value);
end;

procedure TIWBSTabControl.SetCustomRestEvents(const Value: TIWBSCustomRestEvents);
begin
  FCustomRestEvents.Assign(Value);
end;

function TIWBSTabControl.IsStoredCustomAsyncEvents: boolean;
begin
  Result := (FCustomAsyncEvents <> nil) and (FCustomAsyncEvents.Count > 0);
end;

function TIWBSTabControl.IsStoredCustomRestEvents: boolean;
begin
  Result := (FCustomRestEvents <> nil) and (FCustomRestEvents.Count > 0);
end;

procedure TIWBSTabControl.SetScript(const AValue: TStringList);
begin
  FScript.Assign(AValue);
end;

procedure TIWBSTabControl.SetScriptInsideTag(const Value: boolean);
begin
  FScriptInsideTag := Value;
end;

procedure TIWBSTabControl.SetScriptParams(const AValue: TIWBSScriptParams);
begin
  FScriptParams.Assign(AValue);
end;


function TIWBSTabControl.GetScript: TStringList;
begin
  Result := FScript;
end;

function TIWBSTabControl.GetScriptInsideTag: boolean;
begin
  Result := FScriptInsideTag;
end;

function TIWBSTabControl.GetScriptParams: TIWBSScriptParams;
begin
  Result := FScriptParams;
end;

function TIWBSTabControl.GetStyle: TStringList;
begin
  Result := FStyle;
end;

procedure TIWBSTabControl.SetStyle(const AValue: TStringList);
begin
  FStyle.Assign(AValue);
end;

function TIWBSTabControl.HTMLControlImplementation: TIWHTMLControlImplementation;
begin
  Result := ControlImplementation;
end;

function TIWBSTabControl.RegionDiv: TIWHTMLTag;
begin
  Result := FRegionDiv;
end;

function TIWBSTabControl.InitContainerContext(AWebApplication: TIWApplication): TIWContainerContext;
begin
  if not (Self.LayoutMgr is TIWBSLayoutMgr) then
    Self.LayoutMgr := TIWBSLayoutMgr.Create(Self);
  Result := inherited;
end;

procedure TIWBSTabControl.InternalAfterRenderControls(
  var aRenderStream: TIWRenderStream);
begin
  aRenderStream.WriteLine('</div>');
end;

procedure TIWBSTabControl.InternalBeforeRenderControls(
  var aRenderStream: TIWRenderStream);
begin
  aRenderStream.WriteLine('<div class="tab-content">');
end;

procedure TIWBSTabControl.InternalRenderScript(AContext: TIWCompContext; const AHTMLName: string; AScript: TStringList);
begin
  if not FTabOptions.Justified and not FTabOptions.Stacked and gIWBSLibDynamicTabs then
    AScript.Add('$("#'+AHTMLName+'_tabs'+'").bootstrapDynamicTabs();');

  // save seleted tab on change, manually trigger change event because val don't do it
  AScript.Add('$("#'+AHTMLName+'_tabs").off("show.bs.tab").on("show.bs.tab", function(e){ $("#'+AHTMLName+'_input").val($(e.target).attr("tabindex")).change(); });');

  //Add Close Button event
  AScript.Add('$("#'+AHTMLName+'_tabs span.tab-close-btn").off("click").on("click", function(e){ executeAjaxEvent("&page=" + $(this).next().attr("tabindex"), null, "'+AHTMLName+'.DoOnTabClose", true, null, true); });');
  AContext.WebApplication.RegisterCallBack(AHTMLName+'.DoOnTabClose', DoOnTabClose);

  //To update server Tab Index to avoid change browser active tab if refresh page
  AScript.Add('$("#'+AHTMLName+'_tabs").off("shown.bs.tab").on("shown.bs.tab", function(e){ executeAjaxEvent("&page="+$(e.target).attr("tabindex"), null, "'+AHTMLName+'.DoOnAsyncChange", true, null, true); });');
  AContext.WebApplication.RegisterCallBack(AHTMLName+'.DoOnAsyncChange', DoOnAsyncChange);

 (* // event async change
  if Assigned(OnAsyncChange) then begin
    AScript.Add('$("#'+AHTMLName+'_tabs").off("shown.bs.tab").on("shown.bs.tab", function(e){ executeAjaxEvent("&page="+$(e.target).attr("tabindex"), null, "'+AHTMLName+'.DoOnAsyncChange", true, null, true); });');
    AContext.WebApplication.RegisterCallBack(AHTMLName+'.DoOnAsyncChange', DoOnAsyncChange);
  end; *)
end;

procedure TIWBSTabControl.InternalRenderStyle(AStyle: TStringList);
begin
  //
end;

function TIWBSTabControl.RenderAsync(AContext: TIWCompContext): TIWXMLTag;
var
  xHTMLName: string;
  xApplication: TIWApplication;
begin
  Result := nil;
  xHTMLName := HTMLName;

  if FAsyncRefreshControl or not FRendered then
    begin
      TIWBSRegionCommon.CancelChildAsyncRender(Self);
      DoRender;
      TIWBSCommon.RenderAsync(xHTMLName, Self, AContext);
    end
  else
    begin
      if AContext = nil then
        xApplication := GGetWebApplicationThreadVar
      else
        xApplication := AContext.WebApplication;
      SetAsyncClass(xApplication, xHTMLName, RenderCSSClass(AContext), FOldCss);
      SetAsyncStyle(xApplication, xHTMLName, RenderStyle(AContext), FOldStyle);
      SetAsyncVisible(xApplication, FMainID, Visible, FOldVisible);
      if FOldActivePage <> FActivePage then begin
        IWBSExecuteAsyncJScript(xApplication,'$("#'+HTMLName+'_tabs a[tabindex='+IntToStr(TabOrderToTabIndex(FActivePage))+']").tab("show");', False, True);
        FOldActivePage := FActivePage;
      end;

      if Assigned(FOnAfterAsyncChange) then
        FOnAfterAsyncChange(Self);

      if Assigned(gIWBSOnAfterAsyncChange) then
        gIWBSOnAfterAsyncChange(Self, xHTMLName);
    end;
end;

procedure TIWBSTabControl.RenderComponents(AContainerContext: TIWContainerContext; APageContext: TIWBasePageContext);
begin
  TIWBSRegionCommon.RenderComponents(Self, AContainerContext, APageContext);
end;

function TIWBSTabControl.TabOrderToTabIndex(ATabOrder: integer): integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to Pages.Count-1 do
    if TIWTabPage(Pages[i]).TabOrder = ATabOrder then begin
      Result := i;
      break;
    end;
end;

procedure TIWBSTabControl.CheckActiveVisible;
var
  i, LIndex: integer;
begin
  LIndex := TabOrderToTabIndex(FActivePage);
  if (LIndex = -1) or not TIWTabPage(FPages.Items[LIndex]).Visible then
    for i := 0 to Pages.Count-1 do
      if TIWTabPage(FPages[i]).Visible then begin
        FActivePage := TIWTabPage(FPages[i]).TabOrder;
        break;
      end;
end;

function TIWBSTabControl.RenderCSSClass(AComponentContext: TIWCompContext): string;
begin
  Result := 'iwbs-tabs '+FGridOptions.GetClassString;
end;

function TIWBSTabControl.RenderHTML(AContext: TIWCompContext): TIWHTMLTag;
var
  xHTMLName: string;
  xHTMLInput: string;
  i, tabIndex: integer;
  tagTabs, tagLi, tagA, TagSpan: TIWHTMLTag;
  TabPage: TIWTabPage;
begin
  FOldCss := RenderCSSClass(AContext);
  FOldStyle := RenderStyle(AContext);
  FOldVisible := Visible;
  FOldActivePage := FActivePage;

  MergeSortList(Pages, TabOrderCompare);
  CheckActiveVisible;

  // read only one time
  xHTMLName := HTMLName;
  xHTMLInput := xHTMLName + '_input';

  // main div
  FRegionDiv := TIWHTMLTag.CreateTag('div');
  FRegionDiv.AddStringParam('id', xHTMLName);
  FRegionDiv.AddClassParam(FOldCss);
  FRegionDiv.AddStringParam('style',RenderStyle(AContext));
  Result := FRegionDiv;

  // tabs region
  tagTabs := result.Contents.AddTag('ul');
  tagTabs.AddStringParam('id',xHTMLName+'_tabs');
  tagTabs.AddClassParam('nav');
  if FTabOptions.Pills then
    tagTabs.AddClassParam('nav-pills')
  else
    tagTabs.AddClassParam('nav-tabs');

  if FTabOptions.Justified then
    tagTabs.AddClassParam('nav-justified');
  if FTabOptions.Stacked then
    tagTabs.AddClassParam('nav-stacked');

  tagTabs.AddStringParam('role', 'tablist');

  // build the tabs
  tabIndex := -1;
  for i := 0 to Pages.Count-1 do
    begin
      TabPage := TIWTabPage(FPages.Items[i]);
      TabPage.TabOrder := i;
      if not TabPage.Visible and not RenderInvisibleControls then
        Continue;
      tagLi := tagTabs.Contents.AddTag('li');
      if (tabIndex = -1) and (FActivePage = TabPage.TabOrder) and TabPage.Visible then
        begin
          tagLi.AddClassParam('active');
          tabIndex := i;
        end;
      //Add icon Close
      if FTabOptions.CloseButtons then
        begin
          TagSpan:= tagLi.Contents.AddTag('span');
          TagSpan.AddClassParam('tab-close-btn');
          TagSpan.AddStringParam('role', 'presentation');
          TagSpan.Contents.AddText('X');
          if not TabPage.Visible then
            TagSpan.AddStringParam('style', 'display:none');
        end;

      tagA := tagLi.Contents.AddTag('a');
      tagA.AddStringParam('data-toggle', IfThen(FTabOptions.Pills,'pill','tab'));
      tagA.AddStringParam('href', '#'+TabPage.HTMLName);
      tagA.AddIntegerParam('tabindex', i);
      if not TabPage.Visible then
        tagA.AddStringParam('style','display: none');
      tagA.Contents.AddText(TabPage.Title);
    end;

  // this hidden input is for input seleted tab page
  Result.Contents.AddHiddenField(xHTMLInput, xHTMLInput, IntToStr(tabIndex));

  // render scripts
  IWBSRenderScript(Self, AContext, Result);
  FMainID := Result.Params.Values['id'];

  // initialize hidden input (after render scripts)
  TIWPageContext40(AContext.PageContext).AddToIWCLInitProc('  IW.initIWCL('+HTMLControlImplementation.IWCLName+',"'+xHTMLName+'_input",true);');

  FAsyncRefreshControl := False;
  FRendered := True;
end;

procedure TIWBSTabControl.RenderScripts(AComponentContext: TIWCompContext);
begin
  //
end;

function TIWBSTabControl.RenderStyle(AContext: TIWCompContext): string;
begin
  Result := TIWBSCommon.RenderStyle(Self);
end;

function TIWBSTabControl.GetTabPageCSSClass(ATabPage: TComponent): string;
begin
  Result := 'tab-pane';
  if BSTabOptions.Fade then
    Result := Result + ' fade';
  if TIWTabPage(ATabPage).TabOrder = FActivePage then
    Result := Result + ' active in';
end;

procedure TIWBSTabControl.SetTabPageVisibility(ATabIndex: integer; Visible: boolean);
var
  LIndex: integer;
begin
  LIndex := TabOrderToTabIndex(ATabIndex);
  if LIndex >= 0 then begin
    TIWTabPage(FPages.Items[LIndex]).Visible := Visible;
    CheckActiveVisible;
    IWBSExecuteAsyncJScript('$("#'+HTMLName+'_tabs a[tabindex='+IntToStr(LIndex)+']").css("display", "'+iif(Visible,'','none')+'");');
  end;
end;

procedure TIWBSTabControl.SetTabPageVisibility(ATabPage: TIWTabPage; Visible: boolean);
begin
  SetTabPageVisibility(Pages.IndexOf(ATabPage), Visible);
end;
{$endregion}

initialization
  gIWBSLibDynamicTabs := True;

end.
