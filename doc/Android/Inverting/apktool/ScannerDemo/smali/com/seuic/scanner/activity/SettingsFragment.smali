.class public Lcom/seuic/scanner/activity/SettingsFragment;
.super Landroid/app/Fragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/seuic/scanner/views/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/activity/SettingsFragment$4;,
        Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;,
        Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;
    }
.end annotation


# instance fields
.field private FOCUS_COLOR:I

.field private UNFOCUS_COLOR:I

.field private appconfig:Lcom/seuic/scanner/util/Appconfig;

.field private btn_default:Landroid/widget/Button;

.field private btn_developer:Landroid/widget/Button;

.field private btn_modify:Landroid/widget/Button;

.field private btn_prefix:Landroid/widget/Button;

.field private btn_suffix:Landroid/widget/Button;

.field private clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

.field currentView:Landroid/view/View;

.field private dialogDefault:Landroid/app/AlertDialog;

.field private dialogEmus:Landroid/app/AlertDialog;

.field private dialogPassword:Landroid/app/AlertDialog;

.field private edt_interval:Landroid/widget/EditText;

.field private edt_prefix:Landroid/widget/EditText;

.field private edt_suffix:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field private isRestoring:Z

.field private mCharsets:[Lcom/seuic/scanner/util/Appconfig$Charset;

.field private mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mEndChars:[Lcom/seuic/scanner/util/Appconfig$EndChar;

.field private mRestoreDialog:Landroid/app/ProgressDialog;

.field private mRlEndCharOnEmuKey:Landroid/widget/RelativeLayout;

.field mScanner:Lcom/seuic/scanner/Scanner;

.field rb_broadcast:Landroid/widget/RadioButton;

.field rb_clipboard:Landroid/widget/RadioButton;

.field rb_emukey:Landroid/widget/RadioButton;

.field rb_focus:Landroid/widget/RadioButton;

.field resources:Landroid/content/res/Resources;

.field private restoreLocker:Ljava/lang/Object;

.field rg_sendmode:Landroid/widget/RadioGroup;

.field scnManager:Lcom/seuic/scanner/util/ScannerManager;

.field private swt_append:Landroid/widget/Switch;

.field private swt_bootstart:Landroid/widget/Switch;

.field private swt_clear:Landroid/widget/Switch;

.field private swt_continue:Landroid/widget/Switch;

.field private swt_endchar_on_emu:Landroid/widget/Switch;

.field private swt_filter_invisible_chars:Landroid/widget/Switch;

.field private swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

.field private swt_playsound:Landroid/widget/Switch;

.field private swt_showType:Landroid/widget/Switch;

.field private swt_up_to_stop_scan:Landroid/widget/Switch;

.field private swt_viberation:Landroid/widget/Switch;

.field txt_append:Landroid/widget/TextView;

.field txt_autoclear:Landroid/widget/TextView;

.field txt_bootstart:Landroid/widget/TextView;

.field txt_charset:Landroid/widget/TextView;

.field txt_charset_value:Landroid/widget/TextView;

.field txt_continuescan:Landroid/widget/TextView;

.field txt_end_char:Landroid/widget/TextView;

.field txt_end_char_value:Landroid/widget/TextView;

.field txt_endchar_on_emu:Landroid/widget/TextView;

.field txt_filter_invisible_chars:Landroid/widget/TextView;

.field txt_filter_prefix_suffix_blank:Landroid/widget/TextView;

.field txt_interval:Landroid/widget/TextView;

.field txt_other:Landroid/widget/TextView;

.field txt_playsound:Landroid/widget/TextView;

.field txt_prefix:Landroid/widget/TextView;

.field txt_restore:Landroid/widget/TextView;

.field txt_second:Landroid/widget/TextView;

.field txt_settingTitle:Landroid/widget/TextView;

.field txt_settingTitleSend:Landroid/widget/TextView;

.field txt_showType:Landroid/widget/TextView;

.field txt_suffix:Landroid/widget/TextView;

.field txt_up_to_stop_scan:Landroid/widget/TextView;

.field txt_vibrate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 112
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->FOCUS_COLOR:I

    .line 113
    const v0, -0x999a

    iput v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->UNFOCUS_COLOR:I

    .line 115
    invoke-static {}, Lcom/seuic/scanner/util/Appconfig$EndChar;->values()[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mEndChars:[Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 116
    invoke-static {}, Lcom/seuic/scanner/util/Appconfig$Charset;->values()[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCharsets:[Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 122
    new-instance v0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-direct {v0, p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;Lcom/seuic/scanner/activity/SettingsFragment$1;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    .line 123
    new-instance v0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;Lcom/seuic/scanner/activity/SettingsFragment$1;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    .line 608
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->restoreLocker:Ljava/lang/Object;

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->isRestoring:Z

    .line 630
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/seuic/scanner/activity/SettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/seuic/scanner/activity/SettingsFragment$2;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mEndChars:[Lcom/seuic/scanner/util/Appconfig$EndChar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_interval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/seuic/scanner/activity/SettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->UNFOCUS_COLOR:I

    return v0
.end method

.method static synthetic access$1300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_modify:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/seuic/scanner/activity/SettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->FOCUS_COLOR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogDefault:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/seuic/scanner/activity/SettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogDefault:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/seuic/scanner/activity/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->restoreParamsOnBackground()V

    return-void
.end method

.method static synthetic access$1700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRestoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/seuic/scanner/activity/SettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->isRestoring:Z

    return p1
.end method

.method static synthetic access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogPassword:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/seuic/scanner/activity/SettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogPassword:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_suffix:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_suffix:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_prefix:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_prefix:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCharsets:[Lcom/seuic/scanner/util/Appconfig$Charset;

    return-object v0
.end method

.method private requestLayout(Landroid/widget/Switch;)V
    .locals 4
    .param p1, "switchObj"    # Landroid/widget/Switch;

    .prologue
    .line 746
    :try_start_0
    const-class v2, Landroid/widget/Switch;

    const-string v3, "mOnLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 747
    .local v1, "mOnLayout":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 748
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    const-class v2, Landroid/widget/Switch;

    const-string v3, "mOffLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 750
    .local v0, "mOffLayout":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 751
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v0    # "mOffLayout":Ljava/lang/reflect/Field;
    .end local v1    # "mOnLayout":Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Switch;->requestLayout()V

    .line 756
    return-void

    .line 752
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private restoreParamsOnBackground()V
    .locals 6

    .prologue
    .line 611
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->restoreLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-boolean v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->isRestoring:Z

    if-eqz v0, :cond_0

    .line 613
    monitor-exit v1

    .line 628
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRestoreDialog:Landroid/app/ProgressDialog;

    .line 616
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRestoreDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 617
    new-instance v0, Lcom/seuic/scanner/activity/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/activity/SettingsFragment$1;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;)V

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/SettingsFragment$1;->start()V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->isRestoring:Z

    .line 627
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_interval:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isBootstart()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isPlaysound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isViberate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isAppend()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isShowType()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterInvisibleChars()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterPrefixSuffixBlank()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 298
    sget-object v0, Lcom/seuic/scanner/activity/SettingsFragment$4;->$SwitchMap$com$seuic$scanner$util$Appconfig$SendMode:[I

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig$SendMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_focus:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_broadcast:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 306
    :pswitch_2
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_emukey:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_clipboard:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showEndCharOnEmuLayout()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_focus:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRlEndCharOnEmuKey:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRlEndCharOnEmuKey:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 761
    packed-switch p2, :pswitch_data_0

    .line 796
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->showEndCharOnEmuLayout()V

    .line 798
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 799
    return-void

    .line 763
    :pswitch_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->FOCUS:Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V

    goto :goto_0

    .line 766
    :pswitch_2
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->BROADCAST:Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V

    goto :goto_0

    .line 769
    :pswitch_3
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v0

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->EMUKEY:Lcom/seuic/scanner/util/Appconfig$SendMode;

    if-eq v0, v1, :cond_0

    .line 770
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/seuic/scanner/activity/SettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/seuic/scanner/activity/SettingsFragment$3;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    .line 786
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 787
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 788
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->EMUKEY:Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V

    goto :goto_0

    .line 792
    :pswitch_4
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->CLIPBOARD:Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0040
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    .line 139
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mContext:Landroid/content/Context;

    .line 140
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 141
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    .line 143
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 145
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_interval:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_interval:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_suffix:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_suffix:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_prefix:Landroid/widget/EditText;

    .line 152
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_prefix:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_modify:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_modify:Landroid/widget/Button;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_suffix:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_suffix:Landroid/widget/Button;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_prefix:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_prefix:Landroid/widget/Button;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_default:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_default:Landroid/widget/Button;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_developer:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_developer:Landroid/widget/Button;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    .line 170
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    .line 171
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    .line 172
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    .line 173
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    .line 174
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    .line 176
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    .line 177
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    .line 178
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    .line 180
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    .line 182
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    .line 185
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_playsound:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_autoclear:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_continuescan:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_interval:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_second:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_bootstart:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_restore:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_vibrate:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_suffix:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_prefix:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_append:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_settingTitle:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_other:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_showType:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_settingTitleSend:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char_value:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset_value:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getCharset()Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->clickListener:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_up_to_stop_scan:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_endchar_on_emu:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mCheckedChangeListener:Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rg_sendmode:Landroid/widget/RadioGroup;

    .line 221
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_broadcast:Landroid/widget/RadioButton;

    .line 222
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_emukey:Landroid/widget/RadioButton;

    .line 223
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_clipboard:Landroid/widget/RadioButton;

    .line 224
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_focus:Landroid/widget/RadioButton;

    .line 225
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rg_sendmode:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mRlEndCharOnEmuKey:Landroid/widget/RelativeLayout;

    .line 229
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->currentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogEmus:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogDefault:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogDefault:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogDefault:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogPassword:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogPassword:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->dialogPassword:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 329
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 330
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 331
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 239
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 241
    invoke-direct {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->resume()V

    .line 243
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_broadcast:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_emukey:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_clipboard:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_focus:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isShowType()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isBootstart()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isPlaysound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isViberate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isAppend()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterInvisibleChars()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterPrefixSuffixBlank()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/seuic/scanner/activity/SettingsFragment;->showEndCharOnEmuLayout()V

    .line 271
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 272
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset_value:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_settingTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_autoclear:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_bootstart:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_continuescan:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_interval:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_playsound:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_restore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_second:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_vibrate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_suffix:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_append:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_other:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_showType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_settingTitleSend:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_prefix:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_up_to_stop_scan:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_endchar_on_emu:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_filter_invisible_chars:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->txt_filter_prefix_suffix_blank:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_broadcast:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->rb_emukey:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_interval:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_modify:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :goto_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_suffix:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_suffix:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :goto_1
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->edt_prefix:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_prefix:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 693
    :goto_2
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_default:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_developer:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0700a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "switchText":[Ljava/lang/String;
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_append:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 701
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_bootstart:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 705
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_clear:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 709
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_continue:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 713
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_playsound:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 717
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_up_to_stop_scan:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 721
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_endchar_on_emu:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 725
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_viberation:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 729
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_showType:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_invisible_chars:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 736
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->swt_filter_prefix_suffix_blank:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->requestLayout(Landroid/widget/Switch;)V

    .line 742
    .end local v0    # "switchText":[Ljava/lang/String;
    :goto_3
    return-void

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_modify:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 739
    :catch_0
    move-exception v1

    goto :goto_3

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_suffix:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment;->btn_prefix:Landroid/widget/Button;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method
