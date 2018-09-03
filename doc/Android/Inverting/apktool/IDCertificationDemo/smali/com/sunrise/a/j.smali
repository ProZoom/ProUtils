.class public Lcom/sunrise/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private a:Lcom/sunrise/f/az;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/a/j;->a:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/a/j;->a:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->flush()V

    return-void
.end method
