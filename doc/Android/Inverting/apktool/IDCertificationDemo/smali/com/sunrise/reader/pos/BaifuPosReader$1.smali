.class Lcom/sunrise/reader/pos/BaifuPosReader$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/pos/BaifuPosReader;->findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

.field final synthetic val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/pos/BaifuPosReader;Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

    iput-object p2, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

    invoke-static {v4}, Lcom/sunrise/reader/pos/BaifuPosReader;->access$000(Lcom/sunrise/reader/pos/BaifuPosReader;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "searching card..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

    invoke-static {v4}, Lcom/sunrise/reader/pos/BaifuPosReader;->access$100(Lcom/sunrise/reader/pos/BaifuPosReader;)Lcom/pax/api/PiccManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pax/api/PiccManager;->piccDetect(B)Lcom/pax/api/PiccManager$PiccCardInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

    invoke-static {v2}, Lcom/sunrise/reader/pos/BaifuPosReader;->access$000(Lcom/sunrise/reader/pos/BaifuPosReader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CardType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v4, Lcom/pax/api/PiccManager$PiccCardInfo;->CardType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/pax/api/PiccException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    const-wide/16 v4, 0x1e

    :try_start_1
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Lcom/pax/api/PiccException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->this$0:Lcom/sunrise/reader/pos/BaifuPosReader;

    invoke-static {v2}, Lcom/sunrise/reader/pos/BaifuPosReader;->access$000(Lcom/sunrise/reader/pos/BaifuPosReader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picc errCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/pax/api/PiccException;->exceptionCode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/pax/api/PiccException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/BaifuPosReader$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/BaifuPosReader$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
