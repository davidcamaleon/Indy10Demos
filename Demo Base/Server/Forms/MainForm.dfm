object frmMain: TfrmMain
  Left = 196
  Top = 179
  Width = 342
  Height = 296
  Caption = 'Indy Base Server'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtonBar: TPanel
    Left = 0
    Top = 221
    Width = 334
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      334
      41)
    object btnStartStop: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Start Server'
      TabOrder = 0
      OnClick = btnStartStopClick
    end
  end
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 334
    Height = 193
    ActivePage = tsSettings
    Align = alTop
    TabIndex = 0
    TabOrder = 1
    object tsSettings: TTabSheet
      Caption = 'Settings'
      DesignSize = (
        326
        165)
      object Label2: TLabel
        Left = 4
        Top = 8
        Width = 51
        Height = 13
        Caption = 'Bind to IPs'
      end
      object Label3: TLabel
        Left = 120
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Bind to port'
      end
      object Label4: TLabel
        Left = 120
        Top = 48
        Width = 118
        Height = 13
        Caption = 'Select port from stack list'
      end
      object lbIPs: TCheckListBox
        Left = 4
        Top = 24
        Width = 109
        Height = 133
        Anchors = [akLeft, akTop, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
      object cbPorts: TComboBox
        Left = 120
        Top = 64
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
      object edPort: TEdit
        Left = 120
        Top = 24
        Width = 65
        Height = 21
        TabOrder = 2
        Text = '8800'
        OnKeyPress = edPortKeyPress
      end
    end
    object tsProcessLog: TTabSheet
      Caption = 'Process Log'
      ImageIndex = 1
      object lbProcesses: TListBox
        Left = 0
        Top = 0
        Width = 326
        Height = 165
        Style = lbOwnerDrawFixed
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
        OnDrawItem = lbProcessesDrawItem
      end
    end
  end
  object Server: TIdTCPServer
    OnStatus = ServerStatus
    Bindings = <>
    DefaultPort = 8800
    ListenQueue = 50
    MaxConnections = 100
    OnConnect = ServerConnect
    OnDisconnect = ServerDisconnect
    OnException = ServerException
    Scheduler = IdSchedulerOfThreadDefault1
    OnExecute = ServerExecute
    Top = 200
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 32
    Top = 200
  end
  object IdSchedulerOfThreadDefault1: TIdSchedulerOfThreadDefault
    MaxThreads = 100
    Left = 64
    Top = 200
  end
end
