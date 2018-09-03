.class Lcom/example/idcertificationdemo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity;->initReaderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$300(Lcom/example/idcertificationdemo/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$500(Lcom/example/idcertificationdemo/MainActivity;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$400(Lcom/example/idcertificationdemo/MainActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$800(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/example/idcertificationdemo/MainActivity$2$1;-><init>(Lcom/example/idcertificationdemo/MainActivity$2;Landroid/nfc/Tag;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
