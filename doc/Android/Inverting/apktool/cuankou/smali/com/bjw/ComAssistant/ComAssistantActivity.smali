.class public Lcom/bjw/ComAssistant/ComAssistantActivity;
.super Landroid/app/Activity;
.source "ComAssistantActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;,
        Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;
    }
.end annotation


# static fields
.field private static final DIALOG1:I = 0x1

.field private static final DIALOG2:I = 0x2

.field private static final ITEM0:I = 0x1

.field private static final ITEM1:I = 0x2


# instance fields
.field AssistData:Lcom/bjw/bean/AssistBean;

.field ButtonClear:Landroid/widget/Button;

.field ButtonSendCOMA:Landroid/widget/Button;

.field ButtonSendCOMB:Landroid/widget/Button;

.field ButtonSendCOMC:Landroid/widget/Button;

.field ButtonSendCOMD:Landroid/widget/Button;

.field ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

.field ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

.field ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

.field ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

.field DispQueue:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

.field SpinnerBaudRateCOMA:Landroid/widget/Spinner;

.field SpinnerBaudRateCOMB:Landroid/widget/Spinner;

.field SpinnerBaudRateCOMC:Landroid/widget/Spinner;

.field SpinnerBaudRateCOMD:Landroid/widget/Spinner;

.field SpinnerCOMA:Landroid/widget/Spinner;

.field SpinnerCOMB:Landroid/widget/Spinner;

.field SpinnerCOMC:Landroid/widget/Spinner;

.field SpinnerCOMD:Landroid/widget/Spinner;

.field private buttonOnClick:Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

.field checkBoxAutoCOMA:Landroid/widget/CheckBox;

.field checkBoxAutoCOMB:Landroid/widget/CheckBox;

.field checkBoxAutoCOMC:Landroid/widget/CheckBox;

.field checkBoxAutoCOMD:Landroid/widget/CheckBox;

.field checkBoxAutoClear:Landroid/widget/CheckBox;

.field editTextCOMA:Landroid/widget/EditText;

.field editTextCOMB:Landroid/widget/EditText;

.field editTextCOMC:Landroid/widget/EditText;

.field editTextCOMD:Landroid/widget/EditText;

.field editTextLines:Landroid/widget/EditText;

.field editTextRecDisp:Landroid/widget/EditText;

.field editTextTimeCOMA:Landroid/widget/EditText;

.field editTextTimeCOMB:Landroid/widget/EditText;

.field editTextTimeCOMC:Landroid/widget/EditText;

.field editTextTimeCOMD:Landroid/widget/EditText;

.field iRecLines:I

.field mSerialPortFinder:Landroid_serialport_api/SerialPortFinder;

.field radioButtonHex:Landroid/widget/RadioButton;

.field radioButtonTxt:Landroid/widget/RadioButton;

.field private sComDispCount:[Ljava/lang/String;

.field toggleButtonCOMA:Landroid/widget/ToggleButton;

.field toggleButtonCOMB:Landroid/widget/ToggleButton;

.field toggleButtonCOMC:Landroid/widget/ToggleButton;

.field toggleButtonCOMD:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1\u4e32\u53e3"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "2\u4e32\u53e3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3\u4e32\u53e3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4\u4e32\u53e3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->sComDispCount:[Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    .line 179
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->buttonOnClick:Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

    .line 57
    return-void
.end method

.method private CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 0
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;

    .prologue
    .line 876
    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->stopSend()V

    .line 878
    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->close()V

    .line 880
    :cond_0
    return-void
.end method

.method private DispAssistData(Lcom/bjw/bean/AssistBean;)V
    .locals 2
    .param p1, "AssistData"    # Lcom/bjw/bean/AssistBean;

    .prologue
    const/4 v1, 0x1

    .line 700
    invoke-virtual {p1}, Lcom/bjw/bean/AssistBean;->isTxt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 707
    :goto_0
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/bjw/bean/AssistBean;->getSendA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setSendData(Landroid/widget/TextView;)V

    .line 709
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/bjw/bean/AssistBean;->sTimeA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setDelayTime(Landroid/widget/TextView;)V

    .line 712
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/bjw/bean/AssistBean;->getSendB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setSendData(Landroid/widget/TextView;)V

    .line 714
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/bjw/bean/AssistBean;->sTimeB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setDelayTime(Landroid/widget/TextView;)V

    .line 717
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/bjw/bean/AssistBean;->getSendC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setSendData(Landroid/widget/TextView;)V

    .line 719
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/bjw/bean/AssistBean;->sTimeC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setDelayTime(Landroid/widget/TextView;)V

    .line 722
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/bjw/bean/AssistBean;->getSendD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setSendData(Landroid/widget/TextView;)V

    .line 724
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/bjw/bean/AssistBean;->sTimeD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setDelayTime(Landroid/widget/TextView;)V

    .line 727
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private DispRecData(Lcom/bjw/bean/ComBean;)V
    .locals 3
    .param p1, "ComRecData"    # Lcom/bjw/bean/ComBean;

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .local v0, "sMsg":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/bjw/bean/ComBean;->sRecTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    iget-object v1, p1, Lcom/bjw/bean/ComBean;->sComPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    const-string v1, "[Txt] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/bjw/bean/ComBean;->bRec:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_0
    :goto_0
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextRecDisp:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 843
    iget v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    .line 844
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextLines:Landroid/widget/EditText;

    iget v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoClear:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextRecDisp:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextLines:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 849
    const/4 v1, 0x0

    iput v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->iRecLines:I

    .line 851
    :cond_1
    return-void

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    const-string v1, "[Hex] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v1, p1, Lcom/bjw/bean/ComBean;->bRec:[B

    invoke-static {v1}, Lcom/bjw/ComAssistant/MyFunc;->ByteArrToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private OpenComPort(Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 2
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;

    .prologue
    .line 885
    :try_start_0
    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->open()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 893
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25:\u6ca1\u6709\u4e32\u53e3\u8bfb/\u5199\u6743\u9650!"

    invoke-direct {p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->ShowMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 888
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 889
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25:\u672a\u77e5\u9519\u8bef!"

    invoke-direct {p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->ShowMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 891
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25:\u53c2\u6570\u9519\u8bef!"

    invoke-direct {p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->ShowMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SetAutoSend(Lcom/bjw/ComAssistant/SerialHelper;Z)V
    .locals 0
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;
    .param p2, "isAutoSend"    # Z

    .prologue
    .line 854
    if-eqz p2, :cond_0

    .line 856
    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->startSend()V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->stopSend()V

    goto :goto_0
.end method

.method private SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;
    .param p2, "sLoopData"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {p1, p2}, Lcom/bjw/ComAssistant/SerialHelper;->setTxtLoopData(Ljava/lang/String;)V

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p1, p2}, Lcom/bjw/ComAssistant/SerialHelper;->setHexLoopData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SetiDelayTime(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;
    .param p2, "sTime"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bjw/ComAssistant/SerialHelper;->setiDelay(I)V

    .line 815
    return-void
.end method

.method private ShowMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "sMsg"    # Ljava/lang/String;

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 898
    return-void
.end method

.method private SingleChoiceDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u8bf7\u9009\u62e9\u4e32\u53e3\u6570\u91cf"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->sComDispCount:[Ljava/lang/String;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    iget v2, v2, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->buttonOnClick:Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    const-string v1, "\u786e\u5b9a"

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->buttonOnClick:Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const-string v1, "\u53d6\u6d88"

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->buttonOnClick:Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonOnClick;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$0(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setControls()V

    return-void
.end method

.method static synthetic access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    return-void
.end method

.method static synthetic access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setSendData(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$3(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setDelayTime(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$4(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Z)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetAutoSend(Lcom/bjw/ComAssistant/SerialHelper;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0, p1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->sendPortData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->ShowMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->OpenComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    return-void
.end method

.method static synthetic access$9(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/bean/ComBean;)V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->DispRecData(Lcom/bjw/bean/ComBean;)V

    return-void
.end method

.method private buildDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 150
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, "textEntryView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u8bf7\u8f93\u5165"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 154
    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 155
    .local v1, "editTextReflashTime":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    iget v4, v4, Lcom/bjw/bean/AssistBean;->iReflashTime:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v4, "\u786e\u5b9a"

    .line 157
    new-instance v5, Lcom/bjw/ComAssistant/ComAssistantActivity$1;

    invoke-direct {v5, p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$1;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/EditText;)V

    .line 156
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    const-string v4, "\u53d6\u6d88"

    .line 163
    new-instance v5, Lcom/bjw/ComAssistant/ComAssistantActivity$2;

    invoke-direct {v5, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$2;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    .line 162
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private getAssistData()Lcom/bjw/bean/AssistBean;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 758
    const-string v9, "ComAssistant"

    invoke-virtual {p0, v9, v10}, Lcom/bjw/ComAssistant/ComAssistantActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 759
    .local v6, "msharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/bjw/bean/AssistBean;

    invoke-direct {v1}, Lcom/bjw/bean/AssistBean;-><init>()V

    .line 761
    .local v1, "AssistData":Lcom/bjw/bean/AssistBean;
    :try_start_0
    const-string v9, "AssistData"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "personBase64":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 763
    .local v4, "base64Bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 764
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 765
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/bjw/bean/AssistBean;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 770
    .end local v1    # "AssistData":Lcom/bjw/bean/AssistBean;
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "base64Bytes":[B
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "personBase64":Ljava/lang/String;
    .local v2, "AssistData":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 767
    .end local v2    # "AssistData":Ljava/lang/Object;
    .restart local v1    # "AssistData":Lcom/bjw/bean/AssistBean;
    :catch_0
    move-exception v5

    .line 768
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 770
    .restart local v2    # "AssistData":Ljava/lang/Object;
    goto :goto_0
.end method

.method private saveAssistData(Lcom/bjw/bean/AssistBean;)V
    .locals 9
    .param p1, "AssistData"    # Lcom/bjw/bean/AssistBean;

    .prologue
    const/4 v8, 0x0

    .line 730
    iget-object v6, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/bjw/bean/AssistBean;->sTimeA:Ljava/lang/String;

    .line 731
    iget v6, p1, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 733
    iget-object v6, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/bjw/bean/AssistBean;->sTimeB:Ljava/lang/String;

    .line 735
    :cond_0
    iget v6, p1, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 737
    iget-object v6, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/bjw/bean/AssistBean;->sTimeC:Ljava/lang/String;

    .line 739
    :cond_1
    iget v6, p1, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    .line 741
    iget-object v6, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/bjw/bean/AssistBean;->sTimeD:Ljava/lang/String;

    .line 743
    :cond_2
    const-string v6, "ComAssistant"

    invoke-virtual {p0, v6, v8}, Lcom/bjw/ComAssistant/ComAssistantActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 745
    .local v3, "msharedPreferences":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 746
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 747
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 748
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 749
    .local v5, "sBase64":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 750
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "AssistData"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .end local v5    # "sBase64":Ljava/lang/String;
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendPortData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "ComPort"    # Lcom/bjw/ComAssistant/SerialHelper;
    .param p2, "sOut"    # Ljava/lang/String;

    .prologue
    .line 864
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bjw/ComAssistant/SerialHelper;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p1, p2}, Lcom/bjw/ComAssistant/SerialHelper;->sendTxt(Ljava/lang/String;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p1, p2}, Lcom/bjw/ComAssistant/SerialHelper;->sendHex(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setControls()V
    .locals 12

    .prologue
    .line 200
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    iget v9, v9, Lcom/bjw/bean/AssistBean;->iComDispCount:I

    packed-switch v9, :pswitch_data_0

    .line 218
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setContentView(I)V

    .line 222
    :goto_0
    const v9, 0x7f050001

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.bjw.ComAssistant"

    const/16 v11, 0x4000

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 225
    .local v7, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 227
    .local v8, "versionName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v7    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "versionName":Ljava/lang/String;
    :goto_1
    const v9, 0x7f040001

    const v10, 0x1090008

    .line 231
    invoke-static {p0, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 233
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 234
    new-instance v9, Landroid_serialport_api/SerialPortFinder;

    invoke-direct {v9}, Landroid_serialport_api/SerialPortFinder;-><init>()V

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->mSerialPortFinder:Landroid_serialport_api/SerialPortFinder;

    .line 235
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->mSerialPortFinder:Landroid_serialport_api/SerialPortFinder;

    invoke-virtual {v9}, Landroid_serialport_api/SerialPortFinder;->getAllDevicesPath()[Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "entryValues":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "allDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v5

    if-lt v6, v9, :cond_4

    .line 240
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 241
    const v9, 0x1090008

    .line 240
    invoke-direct {v3, p0, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 242
    .local v3, "aspnDevices":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 243
    const v9, 0x7f060003

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextRecDisp:Landroid/widget/EditText;

    .line 244
    const v9, 0x7f060009

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextLines:Landroid/widget/EditText;

    .line 245
    const v9, 0x7f06000a

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoClear:Landroid/widget/CheckBox;

    .line 246
    const v9, 0x7f060005

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonClear:Landroid/widget/Button;

    .line 247
    const v9, 0x7f060007

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    .line 248
    const v9, 0x7f060008

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    .line 249
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonClear:Landroid/widget/Button;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v9, 0x7f06000c

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    .line 254
    const v9, 0x7f060013

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    .line 255
    const v9, 0x7f060015

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    .line 256
    const v9, 0x7f060016

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMA:Landroid/widget/Button;

    .line 257
    const v9, 0x7f060011

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    .line 258
    const v9, 0x7f06000e

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    .line 259
    const v9, 0x7f060010

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    .line 260
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 261
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 262
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 263
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 264
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMA:Landroid/widget/Button;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 268
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 269
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 272
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :cond_0
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    const v9, 0x7f060018

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    .line 278
    const v9, 0x7f06001f

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    .line 279
    const v9, 0x7f060021

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMB:Landroid/widget/CheckBox;

    .line 280
    const v9, 0x7f060022

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMB:Landroid/widget/Button;

    .line 281
    const v9, 0x7f06001d

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    .line 282
    const v9, 0x7f06001a

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    .line 283
    const v9, 0x7f06001c

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    .line 284
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 285
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 286
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 287
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 288
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMB:Landroid/widget/Button;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMB:Landroid/widget/CheckBox;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 291
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 292
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 293
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 296
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 298
    :cond_1
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 301
    const v9, 0x7f060024

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    .line 302
    const v9, 0x7f06002b

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    .line 303
    const v9, 0x7f06002d

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMC:Landroid/widget/CheckBox;

    .line 304
    const v9, 0x7f06002e

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMC:Landroid/widget/Button;

    .line 305
    const v9, 0x7f060029

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    .line 306
    const v9, 0x7f060026

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    .line 307
    const v9, 0x7f060028

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    .line 308
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 309
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 310
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 311
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 312
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMC:Landroid/widget/Button;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 314
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMC:Landroid/widget/CheckBox;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_2

    .line 320
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 322
    :cond_2
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 323
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 325
    const v9, 0x7f060030

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    .line 326
    const v9, 0x7f060037

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    .line 327
    const v9, 0x7f060039

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMD:Landroid/widget/CheckBox;

    .line 328
    const v9, 0x7f06003a

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMD:Landroid/widget/Button;

    .line 329
    const v9, 0x7f060035

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ToggleButton;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    .line 330
    const v9, 0x7f060032

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    .line 331
    const v9, 0x7f060034

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    .line 332
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 333
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$EditorActionEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 334
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$FocusChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 336
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ButtonSendCOMD:Landroid/widget/Button;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ButtonClickEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 338
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMD:Landroid/widget/CheckBox;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 340
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 341
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_3

    .line 344
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 346
    :cond_3
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 347
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    new-instance v10, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;

    invoke-direct {v10, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$ItemSelectedEvent;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 348
    iget-object v9, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-direct {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->DispAssistData(Lcom/bjw/bean/AssistBean;)V

    .line 349
    return-void

    .line 203
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1    # "allDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "aspnDevices":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "entryValues":[Ljava/lang/String;
    .end local v6    # "i":I
    :pswitch_0
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_1
    const v9, 0x7f030002

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 211
    :pswitch_2
    const v9, 0x7f030003

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 214
    :pswitch_3
    const v9, 0x7f030004

    invoke-virtual {p0, v9}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 228
    .restart local v2    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 229
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 238
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v1    # "allDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "entryValues":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_4
    aget-object v9, v5, v6

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDelayTime(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bjw/bean/AssistBean;->sTimeA:Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetiDelayTime(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bjw/bean/AssistBean;->sTimeB:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetiDelayTime(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bjw/bean/AssistBean;->sTimeC:Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetiDelayTime(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextTimeCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bjw/bean/AssistBean;->sTimeD:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetiDelayTime(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSendData(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/bean/AssistBean;->setSendA(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/bean/AssistBean;->setSendB(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    if-ne p1, v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/bean/AssistBean;->setSendC(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/bean/AssistBean;->setSendD(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SetLoopData(Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 102
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 103
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 104
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 105
    invoke-direct {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setControls()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {v0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    .line 81
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {v0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    .line 82
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {v0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    .line 83
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {v0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    .line 84
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;)V

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->DispQueue:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    .line 85
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->DispQueue:Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;

    invoke-virtual {v0}, Lcom/bjw/ComAssistant/ComAssistantActivity$DispQueueThread;->start()V

    .line 86
    invoke-direct {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->getAssistData()Lcom/bjw/bean/AssistBean;

    move-result-object v0

    iput-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    .line 87
    invoke-direct {p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->setControls()V

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    invoke-direct {p0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->buildDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->SingleChoiceDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 123
    const-string v0, "\u63a5\u6536\u5237\u65b0\u8bbe\u7f6e"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    const/4 v0, 0x2

    const-string v1, "\u4e32\u53e3\u6570\u8bbe\u7f6e"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->saveAssistData(Lcom/bjw/bean/AssistBean;)V

    .line 92
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 93
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 94
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 95
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-direct {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->CloseComPort(Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 133
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->showDialog(I)V

    goto :goto_0

    .line 137
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bjw/ComAssistant/ComAssistantActivity;->showDialog(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
