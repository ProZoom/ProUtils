.class Lcom/sunrise/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/b;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/b;


# direct methods
.method constructor <init>(Lcom/sunrise/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/b$1;->a:Lcom/sunrise/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sunrise/b$1;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->b(Lcom/sunrise/b;)Lcom/sunrise/reader/pos/IPOSCardReader;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/b$1;->a:Lcom/sunrise/b;

    invoke-static {v1}, Lcom/sunrise/b;->a(Lcom/sunrise/b;)Landroid/nfc/NfcAdapter$ReaderCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunrise/reader/pos/IPOSCardReader;->findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
