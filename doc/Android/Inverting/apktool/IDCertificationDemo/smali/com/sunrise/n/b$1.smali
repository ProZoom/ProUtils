.class Lcom/sunrise/n/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pos/sdk/card/PosCardManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunrise/n/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/n/b;


# direct methods
.method constructor <init>(Lcom/sunrise/n/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardDetected(Lcom/pos/sdk/card/PosCardManager;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/pos/sdk/card/PosCardManager;
    .param p2, "arg1"    # I

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCardDetected =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v0}, Lcom/sunrise/n/b;->a(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v1}, Lcom/sunrise/n/b;->b(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager$EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pos/sdk/card/PosCardManager;->unregisterListener(Lcom/pos/sdk/card/PosCardManager$EventListener;)V

    iget-object v0, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v0}, Lcom/sunrise/n/b;->c(Lcom/sunrise/n/b;)Lcom/sunrise/l/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sunrise/l/a;->onSuccess(I)V

    return-void
.end method

.method public onError(Lcom/pos/sdk/card/PosCardManager;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/pos/sdk/card/PosCardManager;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v0}, Lcom/sunrise/n/b;->a(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v1}, Lcom/sunrise/n/b;->b(Lcom/sunrise/n/b;)Lcom/pos/sdk/card/PosCardManager$EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pos/sdk/card/PosCardManager;->unregisterListener(Lcom/pos/sdk/card/PosCardManager$EventListener;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v0}, Lcom/sunrise/n/b;->c(Lcom/sunrise/n/b;)Lcom/sunrise/l/a;

    move-result-object v0

    const-string v1, "\u5bfb\u5361\u8d85\u65f6"

    invoke-interface {v0, p2, v1}, Lcom/sunrise/l/a;->onError(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/n/b$1;->a:Lcom/sunrise/n/b;

    invoke-static {v0}, Lcom/sunrise/n/b;->c(Lcom/sunrise/n/b;)Lcom/sunrise/l/a;

    move-result-object v0

    const-string v1, "\u5bfb\u5361\u51fa\u9519"

    invoke-interface {v0, p2, v1}, Lcom/sunrise/l/a;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onInfo(Lcom/pos/sdk/card/PosCardManager;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/pos/sdk/card/PosCardManager;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInfo =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/m/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
