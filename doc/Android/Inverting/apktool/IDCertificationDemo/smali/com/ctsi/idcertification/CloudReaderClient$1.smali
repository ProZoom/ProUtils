.class Lcom/ctsi/idcertification/CloudReaderClient$1;
.super Landroid/os/Handler;
.source "CloudReaderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctsi/idcertification/CloudReaderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctsi/idcertification/CloudReaderClient;


# direct methods
.method constructor <init>(Lcom/ctsi/idcertification/CloudReaderClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private mDialogShow(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-boolean v0, Lcom/ctsi/idcertification/constant/Constant;->DIALOG_ISSHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    .line 104
    .local v0, "what":I
    sparse-switch v0, :sswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 106
    :sswitch_0
    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v1}, Lcom/ctsi/idcertification/CloudReaderClient;->access$0(Lcom/ctsi/idcertification/CloudReaderClient;)V

    goto :goto_0

    .line 109
    :sswitch_1
    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v1}, Lcom/ctsi/idcertification/CloudReaderClient;->access$1(Lcom/ctsi/idcertification/CloudReaderClient;)V

    goto :goto_0

    .line 112
    :sswitch_2
    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$1;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$2(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/nfc/Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ctsi/idcertification/CloudReaderClient;->nfcReadCard(Landroid/nfc/Tag;)V

    goto :goto_0

    .line 115
    :sswitch_3
    const-string v1, "\u8fde\u63a5\u8bbe\u5907..."

    invoke-direct {p0, v1}, Lcom/ctsi/idcertification/CloudReaderClient$1;->mDialogShow(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :sswitch_4
    const-string v1, "\u8bfb\u53d6\u4e2d..."

    invoke-direct {p0, v1}, Lcom/ctsi/idcertification/CloudReaderClient$1;->mDialogShow(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :sswitch_5
    const-string v1, "\u68c0\u67e5\u8bbe\u5907..."

    invoke-direct {p0, v1}, Lcom/ctsi/idcertification/CloudReaderClient$1;->mDialogShow(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :sswitch_6
    const-string v1, "\u5b89\u5168\u8ba4\u8bc1\u4e2d..."

    invoke-direct {p0, v1}, Lcom/ctsi/idcertification/CloudReaderClient$1;->mDialogShow(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :sswitch_7
    const-string v1, "\u8bfb\u53d6\u8bbe\u5907\u4fe1\u606f..."

    invoke-direct {p0, v1}, Lcom/ctsi/idcertification/CloudReaderClient$1;->mDialogShow(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6f -> :sswitch_1
        0xde -> :sswitch_0
        0x14d -> :sswitch_2
    .end sparse-switch
.end method
