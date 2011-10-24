object CM: TCM
  OldCreateOrder = False
  Height = 218
  Width = 284
  object ib_database: TIB_Database
    PasswordStorage = psNotSecure
    SQLDialect = 3
    Params.Strings = (
      'PATH=C:\Arquivos de Programas\Focus\FOCUS.FOC'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3')
    Isolation = tiCommitted
    Left = 40
    Top = 24
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object ib_transaction: TIB_Transaction
    IB_Connection = ib_database
    Isolation = tiCommitted
    Left = 160
    Top = 24
  end
  object Provider: TDataSetProvider
    DataSet = IBOQuery
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 40
    Top = 96
  end
  object IBOQuery: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de Programas\Focus\FOCUS.FOC'
    IB_Connection = ib_database
    IB_Transaction = ib_transaction
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    FieldOptions = []
    Left = 96
    Top = 24
  end
  object CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 96
    Top = 96
    object intgrfldCDSCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS.CD_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldCDSNM_PRODUTO: TStringField
      DisplayWidth = 52
      FieldName = 'NM_PRODUTO'
      Origin = 'PRODUTOS.NM_PRODUTO'
      Size = 45
    end
    object strngfldCDSCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Origin = 'PRODUTOS.COD_BARRAS'
      Size = 13
    end
  end
  object Query: TIB_Query
    DatabaseName = 'C:\Arquivos de Programas\Focus\FOCUS.FOC'
    IB_Connection = ib_database
    IB_Transaction = ib_transaction
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    KeyLinks.Strings = (
      'PRODUTOS.CD_PRODUTO')
    Left = 144
    Top = 96
  end
end
