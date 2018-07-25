.class Lcom/example/urovoscan/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/urovoscan/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/urovoscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/urovoscan/MainActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/example/urovoscan/MainActivity$1;->this$0:Lcom/example/urovoscan/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 41
    iget-object v3, p0, Lcom/example/urovoscan/MainActivity$1;->this$0:Lcom/example/urovoscan/MainActivity;

    invoke-static {v3}, Lcom/example/urovoscan/MainActivity;->access$000(Lcom/example/urovoscan/MainActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string v3, "barocode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    .local v0, "barocode":[B
    const-string v3, "length"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "barocodelen":I
    const-string v3, "barcodeType"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    .line 46
    .local v2, "temp":B
    const-string v3, "debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "codetype......"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v3, p0, Lcom/example/urovoscan/MainActivity$1;->this$0:Lcom/example/urovoscan/MainActivity;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3, v4}, Lcom/example/urovoscan/MainActivity;->access$102(Lcom/example/urovoscan/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/example/urovoscan/MainActivity$1;->this$0:Lcom/example/urovoscan/MainActivity;

    invoke-static {v3}, Lcom/example/urovoscan/MainActivity;->access$000(Lcom/example/urovoscan/MainActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/example/urovoscan/MainActivity$1;->this$0:Lcom/example/urovoscan/MainActivity;

    invoke-static {v4}, Lcom/example/urovoscan/MainActivity;->access$100(Lcom/example/urovoscan/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
