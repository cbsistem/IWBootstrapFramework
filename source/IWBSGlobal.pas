unit IWBSGlobal;

interface

uses Classes, SysUtils, IWHTMLTag, IWBSLayoutMgr;

// ATENTION!!!!, Global files should only be modified in TIWServerController.OnConfig event, they are not Thread Safe.
// only boolean vars (for enable/disable plugins) could be changed anytime, because boleans vars work with attomic read/write
var
  // paths to framework JS and CSS files
  gIWBSLibPath: string = '/iwbs/';

  // path for JQuery library (required)
  gIWBSLibJQueryJs: string = '/<iwbspath>/jquery-1.12.1.min.js';

  // path for bootstrap library (required)
  gIWBSLibBootstrapCss: string = '/<iwbspath>/bootstrap-3.3.6/css/bootstrap.min.css';
  gIWBSLibBootstrapJs: string = '/<iwbspath>/bootstrap-3.3.6/js/bootstrap.min.js';

  // path for iwbs support files (required)
  gIWBSLibIWBSCss: string = '/<iwbspath>/iwbs.css';
  gIWBSLibIWBSJs: string = '/<iwbspath>/iwbs.js';

  // path for Polyfiller library, it provides full support for html5 to older browsers (optional)
  gIWBSLibPolyFiller: boolean = True;
  gIWBSLibPolyFillerJs: string = '/<iwbspath>/webshim-1.15.10/js-webshim/minified/polyfiller.js';

  // path for Dynamic Tabs plugin (optional)
  gIWBSLibDynamicTabs: boolean = False;
  gIWBSLibDynamicTabsCss: string = '/<iwbspath>/dyntabs/bootstrap-dynamic-tabs.css';
  gIWBSLibDynamicTabsJs: string = '/<iwbspath>/dyntabs/bootstrap-dynamic-tabs.js';

  // path for Summernote plugin (optional)
  gIWBSLibSummerNote: boolean = False;
  gIWBSLibSummerNoteCss: string = '/<iwbspath>/summernote/dist/summernote.css';
  gIWBSLibSummerNoteJs: string = '/<iwbspath>/summernote/dist/summernote.js';

  //IWBSTable Mobile Responsive
  gIWBSLibTableMobileResponsive: Boolean = True;


  // configurations for design time grid
  gIWBSRenderingSortMethod: TIWBSRenderingSortMethod = bsrmSortYX;
  gIWBSRenderingGridPrecision: integer = 12;

  // server start timestamp value in format string, it is usefull to force client refresh cache browsers of included files
  gIWBSRefreshCacheParam: string = '';

  // occurs for each control, after component is changed on an Asyn call, it doesn't occurs if the control is fully rendered
  // useful for execute a refresh on third party plugins that need it
  gIWBSOnAfterAsyncChange: procedure(AControl: TComponent; const AHTMLName);

  // occurs for each control, after control is rendered
  gIWBSOnAfterRender: procedure(AControl: TComponent);

  // occurs for each control, before control is rendered
  // useful for set common properties to certain components, for exampl�: to enable third party plugins
  gIWBSOnRender: procedure(AControl: TComponent);

  // global link files to include in every page
  gIWBSLinkFiles: TStringList = nil;

  //Global BootsTrap css file Theme for all Forms
  gIWBSGlobalThemeCss:string = '';

procedure IWBSAddGlobalLinkFile(const AFile: string);

implementation

// to add global files should be done in any place before server start working, it's not thread safe
// in initialization section
// IWServerController.OnConfig
// IWServerController.OnCreate
// etc...
procedure IWBSAddGlobalLinkFile(const AFile: string);
begin
  if gIWBSLinkFiles = nil then
    gIWBSLinkFiles := TStringList.Create;
  if gIWBSLinkFiles.IndexOf(AFile) = -1 then
    gIWBSLinkFiles.Add(AFile);
end;

initialization
  gIWBSRefreshCacheParam := FormatDateTime('yyyymmddhhnnsszzz', now);

finalization
  FreeAndNil(gIWBSLinkFiles);

end.
