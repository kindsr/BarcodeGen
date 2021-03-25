object DM: TDM
  OldCreateOrder = False
  Height = 177
  Width = 267
  object UniConnection1: TUniConnection
    ProviderName = 'SQL Server'
    Port = 9005
    Database = 'ZPK'
    Username = 'sa'
    Server = '168.126.28.28'
    Connected = True
    Left = 56
    Top = 16
    EncryptedPassword = '8BFF8CFF89FF8DFFCDFFCDFFCFFFCEFFBFFF8FFF8BFF8CFF'
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 120
    Top = 16
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select item_serno from tp_serial_csv01')
    Left = 184
    Top = 16
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 56
    Top = 72
  end
end
