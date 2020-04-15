object DM1: TDM1
  OldCreateOrder = False
  Height = 360
  Width = 640
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    ClientCodepage = 'cp1251'
    Properties.Strings = (
      'codepage=cp1251')
    Connected = True
    HostName = 'db-pu01'
    Port = 3306
    Database = 'metz_db_pu'
    User = 'metz'
    Password = '11223344'
    Protocol = 'MariaDB-10'
    Left = 16
    Top = 8
  end
  object zq_rep001: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'WITH'
      'b1 AS'
      
        '(SELECT pu.id_tp_a,count(pu.pu_sn) AS c_ FROM pu WHERE pu.id_pu_' +
        'model_a=1 GROUP BY pu.id_tp_a),'
      'b2 AS'
      
        '(SELECT pu.id_tp_a,count(pu.pu_sn) AS c_ FROM pu WHERE pu.id_pu_' +
        'model_a=2 GROUP BY pu.id_tp_a),'
      'b3 AS'
      
        '(SELECT id_tp_a,COUNT(*)AS c_ FROM bpu WHERE bpu.bpu_status=2 GR' +
        'OUP BY id_tp_a),'
      'b4 AS'
      
        '(select id_tp_a,COUNT(*)AS c_ FROM gateway WHERE gateway.gw_stat' +
        'us=2 GROUP BY id_tp_a),'
      
        'A1 AS(SELECT tp.tp_name,tp.tp_address,ifnull(b1.c_,0) AS c_1f,if' +
        'null(b2.c_,0) AS c_3f,IFNULL(b3.c_,0)AS c_bpu ,IFNULL(b4.c_,0) A' +
        'S c_gw'
      'FROM tp'
      'LEFT JOIN b1 ON tp.id_tp=b1.id_tp_a'
      'LEFT JOIN b2 ON tp.id_tp=b2.id_tp_a'
      'LEFT JOIN b3 ON tp.id_tp=b3.id_tp_a'
      'LEFT JOIN b4 ON tp.id_tp=b4.id_tp_a'
      ')'
      ''
      
        'SELECT tp_name,tp_address,c_1f,c_3f,(c_1f+c_3f)AS sum_,c_bpu,c_g' +
        'w FROM A1 ORDER BY tp_name')
    Params = <>
    Left = 16
    Top = 64
  end
  object fR1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zq_rep004
    BCDToCurrency = False
    Left = 424
    Top = 8
  end
  object R001: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43870.435048344900000000
    ReportOptions.LastChange = 43870.613041076400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 472
    Top = 8
    Datasets = <
      item
        DataSet = fR1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fR1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1p_number: TfrxMemoView
          Left = 79.370130000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'p_number'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."p_number"]')
        end
        object frxDBDataset1fio: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fio'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."fio"]')
        end
        object frxDBDataset1tp_name: TfrxMemoView
          Left = 151.181200000000000000
          Top = 211.653680000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tp_name'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tp_name"]')
        end
        object frxDBDataset1fider_a: TfrxMemoView
          Left = 151.181200000000000000
          Top = 275.905690000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fider_a'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."fider_a"]')
        end
        object frxDBDataset1opore_a: TfrxMemoView
          Left = 283.464750000000000000
          Top = 279.685220000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'opore_a'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."opore_a"]')
        end
        object frxDBDataset1tp_name1: TfrxMemoView
          Left = 302.362400000000000000
          Top = 211.653680000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tp_name'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tp_name"]')
        end
        object frxDBDataset1address: TfrxMemoView
          Left = 287.244280000000000000
          Top = 64.252010000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'address'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."address"]')
        end
        object frxDBDataset1address1: TfrxMemoView
          Left = 49.133890000000000000
          Top = 238.110390000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'address'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."address"]')
        end
        object frxDBDataset1pu_sn: TfrxMemoView
          Left = 215.433210000000000000
          Top = 411.968770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_sn'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_sn"]')
        end
        object frxDBDataset1pu_plomb1: TfrxMemoView
          Left = 226.771800000000000000
          Top = 480.000310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_plomb'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_plomb"]')
        end
        object frxDBDataset1pu_model_name: TfrxMemoView
          Left = 196.535560000000000000
          Top = 366.614410000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_model_name'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_model_name"]')
        end
        object frxDBDataset1old_pu_model: TfrxMemoView
          Left = 200.315090000000000000
          Top = 631.181510000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'old_pu_model'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."old_pu_model"]')
        end
        object frxDBDataset1sn_old_pu: TfrxMemoView
          Left = 200.315090000000000000
          Top = 604.724800000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sn_old_pu'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."sn_old_pu"]')
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fR1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1pu_plomb: TfrxMemoView
          Left = 154.960730000000000000
          Top = 128.504020000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_plomb'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_plomb"]')
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fR1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1p_number1: TfrxMemoView
          Left = 83.149660000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'p_number'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."p_number"]')
        end
        object frxDBDataset1fio1: TfrxMemoView
          Left = 283.464750000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fio'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."fio"]')
        end
        object frxDBDataset1address2: TfrxMemoView
          Left = 309.921460000000000000
          Top = 79.370130000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'address'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."address"]')
        end
        object frxDBDataset1pu_model_name1: TfrxMemoView
          Left = 166.299320000000000000
          Top = 166.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_model_name'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_model_name"]')
        end
        object frxDBDataset1pu_sn1: TfrxMemoView
          Left = 207.874150000000000000
          Top = 230.551330000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_sn'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_sn"]')
        end
        object frxDBDataset1pu_sn2: TfrxMemoView
          Left = 306.141930000000000000
          Top = 332.598640000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pu_sn'
          DataSet = fR1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."pu_sn"]')
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fR1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        StartNewPage = True
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 512
    Top = 8
  end
  object zq_rep002: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      'tp.tp_name,tp.tp_address,'
      
        'bpu.date_install,substr(bpu.bpu_model_name,1,12)as bpu_model_nam' +
        'e,bpu.bpu_sn,'
      'CONCAT(bpu.tt1_k,'#39'/5A'#39')AS tt,'
      'brigades.name_master'
      'FROM bpu'
      'LEFT join tp ON tp.id_tp=bpu.id_tp_a'
      'left join brigades ON brigades.id_brig=bpu.id_brig_a'
      'WHERE bpu.bpu_status=2'
      'ORDER BY tp_name')
    Params = <>
    Left = 16
    Top = 112
  end
  object zq_rep003: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'WITH'
      'A1 AS ('
      'SELECT'
      'pu.id_tp_a,'
      'pu_model.model_faze AS faze,'
      'COUNT(pu_sn) AS SUM_'
      'FROM pu'
      'LEFT JOIN pu_model ON pu_model.id_pu_model=pu.id_pu_model_a'
      'GROUP BY pu.id_tp_a,pu_model.model_faze ),'
      ''
      'B1 AS (SELECT id_tp_a,sum_ FROM A1 WHERE faze=1),'
      'B3 AS (SELECT id_tp_a,sum_ FROM A1 WHERE faze=3),'
      ''
      'C11 AS ('
      'SELECT'
      'tp.tp_name,'
      'ifnull(B1.sum_,0) AS SUM1,'
      'ifnull(B3.sum_,0) AS SUM3,'
      '(ifnull(B1.sum_,0)+ifnull(B3.sum_,0))AS SUM_'
      'FROM tp'
      'LEFT JOIN B1 ON b1.id_tp_a=tp.id_tp'
      'LEFT JOIN b3 ON b3.id_tp_a=tp.id_tp'
      '),'
      'E AS ('
      'SELECT'
      'pu.id_tp_a,'
      'pu.id_act_status_a,'
      'count(pu.id_act_status_a)AS sum_'
      'FROM pu'
      'WHERE pu.id_act_status_a=2 OR pu.id_act_status_a=3'
      'GROUP BY pu.id_tp_a,pu.id_act_status_a),'
      ''
      'E1 AS (SELECT id_tp_a,sum_ FROM e WHERE id_act_status_a=2),'
      'E2 AS (SELECT id_tp_a,sum_ FROM e WHERE id_act_status_a=3),'
      ''
      'C22 AS ('
      'SELECT'
      'tp.tp_name,'
      'ifnull(e1.sum_,0) AS SUM_act,'
      'IFNULL(e2.sum_,0) AS SUM_act3,'
      '(IFNULL(e1.sum_,0)+IFNULL(e2.sum_,0))AS SUM_acts'
      'FROM tp'
      'LEFT JOIN E1 ON e1.id_tp_a=tp.id_tp'
      'LEFT JOIN E2 ON e2.id_tp_a=tp.id_tp)'
      ''
      'SELECT'
      'tp.tp_name,'
      'tp.tp_address,'
      'c11.sum1 as c_1f,c11.SUM3 as c_3f,c11.SUM_,'
      'c22.sum_act,c22.sum_act3,c22.sum_acts,'
      'ROUND((100*c22.sum_acts/c11.sum_),2) AS percent'
      'FROM tp'
      'LEFT JOIN c11 ON c11.tp_name=tp.tp_name'
      'LEFT JOIN c22 ON c22.tp_name=tp.tp_name'
      'ORDER BY tp_name'
      '')
    Params = <>
    Left = 16
    Top = 168
  end
  object zq_rep004: TZReadOnlyQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT'
      '  case :p_fiz18'
      '    when 1 then pu.p_number'
      '    ELSE NULL END  AS p_number,'
      '  case :p_fiz18'
      '    when 1 then pu.FIO'
      '    ELSE NULL END AS fio,'
      '  tp.tp_name,'
      '  CONCAT(tp.strukture,tp.tp_address) AS address,'
      '  tp_map_point.fider_a,'
      '  tp_map_point.opore_a,'
      '  pu.pu_sn,'
      '  pu.pu_plomb,'
      '  pu_model.pu_model_name,'
      '  case :p_fiz18'
      '    when 1 then pu.old_pu_model'
      '    ELSE NULL end AS old_pu_model,'
      '  case :p_fiz18'
      '    when 1 then pu.sn_old_pu'
      '    ELSE NULL end AS sn_old_pu'
      'FROM pu'
      'LEFT JOIN pu_model ON pu_model.id_pu_model=pu.id_pu_model_a'
      'LEFT JOIN tp ON tp.id_tp=pu.id_tp_a'
      
        'LEFT JOIN tp_map_point on tp_map_point.id_tp_point=pu.id_tp_poin' +
        't_a'
      ''
      'WHERE (:p_rb=1 or :p_rb=2) and'
      '(:p_ch_fiz=0 or pu.id_abonent_status_a=1) and'
      '(:p_not_sign=0 or pu.id_act_status_a=1) and'
      '('
      '(:p_rb=2 or pu.pu_sn LIKE :p_sn) and'
      '(:p_rb=1 or tp.id_tp=:p_tp)'
      ')'
      '-- ORDER BY pu.pu_sn'
      'UNION'
      
        'select null as p_number, NULL AS fio, NULL AS tp_name, NULL AS a' +
        'ddress, NULL AS fider_a, NULL AS opore_a, NULL AS pu_sn, NULL AS' +
        ' pu_plomb,'
      
        ' NULL AS pu_model_name, NULL AS old_pu_model, NULL AS sn_old_pu ' +
        'FROM seq_1_to_1 WHERE :p_rb=0;')
    Params = <
      item
        DataType = ftString
        Name = 'p_fiz18'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_rb'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'p_ch_fiz'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'p_not_sign'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'p_sn'
        ParamType = ptUnknown
        Value = '%%'
      end
      item
        DataType = ftString
        Name = 'p_tp'
        ParamType = ptUnknown
        Value = '18'
      end>
    Left = 16
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'p_fiz18'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_rb'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'p_ch_fiz'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'p_not_sign'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'p_sn'
        ParamType = ptUnknown
        Value = '%%'
      end
      item
        DataType = ftString
        Name = 'p_tp'
        ParamType = ptUnknown
        Value = '18'
      end>
  end
  object DS_tp: TDataSource
    DataSet = zq_tp
    Left = 512
    Top = 112
  end
  object zq_tp: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select'
      'id_tp,'
      'tp_name'
      'from tp'
      'order by tp_name')
    Params = <>
    Left = 464
    Top = 112
  end
end
