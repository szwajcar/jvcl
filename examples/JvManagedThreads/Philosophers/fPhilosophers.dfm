�
 TFRMDININGPHILOSOPHERS 09
  TPF0TfrmDiningPhilosophersfrmDiningPhilosophersLeft�Top� BorderStylebsDialogCaptionDining PhilosophersClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnCreate
FormCreateOnShowFormShow
DesignSize�� PixelsPerInch`
TextHeight TLabel
PhilLabel1Left� Top� Width1Height	AlignmenttaCenterCaption
PhilLabel1  TLabel
PhilLabel2LeftXTop Width1HeightCaption
PhilLabel2  TLabel
PhilLabel3Left@ToppWidth1HeightCaption
PhilLabel3  TLabel
PhilLabel4Left� ToppWidth1Height	AlignmenttaRightJustifyCaption
PhilLabel4  TLabel
PhilLabel5Left� Top Width1Height	AlignmenttaRightJustifyCaption
PhilLabel5  TShapeShape1Left� TopWidthiHeightqShapestCircle  TLabelLblSpeedLeftTop� Width"HeightCaptionSpeed:  TMemoMemoLeft`TopWidth�Height� TabStopAnchorsakLeftakTopakRightakBottom Lines.Strings0Welcome to the dining-philosophers demonstration TThe Dining Philosophers problem is a classic multi-process synchronization problem. VThe problem consists of five philosophers sitting at a table who do nothing but think Oand eat. Between each philosopher, there is a single stick. In order to eat, a Qphilosopher must have both sticks. A problem can arise if each philosopher grabs Zthe stick on the right, then waits for the stick on the left. In this case a deadlock has ,occurred, and all philosophers will starve.  SThis is a demonstration of the MT Threading components to solve this problem using a Monitor Section.  ReadOnly	TabOrder   TButtonBtnStartLeftTopWidthKHeightCaption&StartDefault	TabOrderOnClickBtnStartClick  TButtonBtnTerminateLeftTop0WidthKHeightCaption
&TerminateTabOrderOnClickBtnTerminateClick  	TTrackBarSpeedBarLeftTop� Width-Height� Max�Orientation
trVertical	Frequency2Position� SelEnd SelStart TabOrder	TickMarkstmBottomRight	TickStyletsAutoOnChangeSpeedBarChange  TButtonBtnCloseLeftTophWidthKHeightCaption&CloseTabOrderOnClickBtnCloseClick  TJvMtManagerPhilosopherManagerLeft`Top�   TJvMtThreadPhilosopherThreadManagerPhilosopherManagerRunOnCreate	OnExecutePhilosopherThreadExecuteLeft`Top�   TJvMtMonitorSectionMonitorSectionLeft� Top�   TJvMtVCLToThreadPersonBufferMaxBufferSize
OnCanWritePersonBufferCanWriteLeft� Top�   TJvMtThreadToVCLMsgToVCL	OnCanReadMsgToVCLCanReadLeft� Top�    