.class Lcom/sunrise/reader/pos/JBPosNFC$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/pos/JBPosNFC;->findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunrise/reader/pos/JBPosNFC;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/pos/JBPosNFC;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-static {v0}, Lcom/sunrise/reader/pos/JBPosNFC;->access$000(Lcom/sunrise/reader/pos/JBPosNFC;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8eab\u4efd\u8bc1\u5bfb\u5361\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sunrise/n/k;->a()Lcom/sunrise/n/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/n/k;->b()Lcom/sunrise/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/n/b;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-static {v0}, Lcom/sunrise/reader/pos/JBPosNFC;->access$000(Lcom/sunrise/reader/pos/JBPosNFC;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8eab\u4efd\u8bc1\u5bfb\u5361\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-static {v0}, Lcom/sunrise/reader/pos/JBPosNFC;->access$100(Lcom/sunrise/reader/pos/JBPosNFC;)Landroid/nfc/NfcAdapter$ReaderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-static {v0}, Lcom/sunrise/reader/pos/JBPosNFC;->access$100(Lcom/sunrise/reader/pos/JBPosNFC;)Landroid/nfc/NfcAdapter$ReaderCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC$1;->this$0:Lcom/sunrise/reader/pos/JBPosNFC;

    invoke-static {v0, v2}, Lcom/sunrise/reader/pos/JBPosNFC;->access$102(Lcom/sunrise/reader/pos/JBPosNFC;Landroid/nfc/NfcAdapter$ReaderCallback;)Landroid/nfc/NfcAdapter$ReaderCallback;

    return-void
.end method
