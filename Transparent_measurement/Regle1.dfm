object Form1: TForm1
  Left = 259
  Top = 124
  Width = 355
  Height = 329
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'Transparent measurement'
  Color = clYellow
  TransparentColor = True
  TransparentColorValue = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 120
  TextHeight = 16
  object P1: TPanel
    Left = 8
    Top = 8
    Width = 329
    Height = 281
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'qaz'
    Color = clYellow
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 16
    object opEcran1: TMenuItem
      Caption = 'TopEcran'
      OnClick = opEcran1Click
    end
    object Normal1: TMenuItem
      Caption = 'Normal'
      OnClick = Normal1Click
    end
  end
end
