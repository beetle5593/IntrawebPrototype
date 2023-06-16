object IWServerController: TIWServerController
  OnCreate = IWServerControllerBaseCreate
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  HTMLHeaders.Strings = (
    
      '<meta name="viewport" content="width=device-width,initial-scale=' +
      '1"/>')
  ContentFiles.Strings = (
    '/css/style.css'
    'js/script.js'
    
      'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.' +
      'min.css'
    
      'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.b' +
      'undle.min.js'
    
      'https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;dis' +
      'play=swap'
    
      'https://cdn.jsdelivr.net/npm/sweetalert2@11.7.12/dist/sweetalert' +
      '2.min.css'
    
      'https://cdn.jsdelivr.net/npm/sweetalert2@11.7.12/dist/sweetalert' +
      '2.all.min.js'
    '')
  Port = 8888
  Version = '15.2.69'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
  object Pool: TIWDataModulePool
    OnCreateDataModule = PoolCreateDataModule
    OnFreeDataModule = PoolFreeDataModule
    Active = False
    Version = '2.1.0'
    RaiseExceptions = True
    AutoGrow = False
    GrowToSize = 100
    PoolCount = 20
    Left = 60
    Top = 12
  end
end
