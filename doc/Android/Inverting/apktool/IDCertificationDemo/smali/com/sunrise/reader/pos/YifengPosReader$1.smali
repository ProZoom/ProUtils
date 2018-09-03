.class Lcom/sunrise/reader/pos/YifengPosReader$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/pos/YifengPosReader;->findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunrise/reader/pos/YifengPosReader;

.field final synthetic val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/pos/YifengPosReader;Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    iput-object p2, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    iget-object v2, v2, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    const/16 v3, 0x3c

    invoke-interface {v2, v3}, Lcom/yifengcom/yfpos/service/IService;->rfidOpenEx(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->this$0:Lcom/sunrise/reader/pos/YifengPosReader;

    iget-object v3, v3, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    const/16 v4, 0x9

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Lcom/yifengcom/yfpos/service/IService;->rfidApduEx([BI)[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x1dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x1t
        0x8t
    .end array-data
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/YifengPosReader$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader$1;->val$nfcCallBackArg:Landroid/nfc/NfcAdapter$ReaderCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/YifengPosReader$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
