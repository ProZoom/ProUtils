.class public Lcom/sunrise/f/au;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/sunrise/f/au;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    iput-object p2, p0, Lcom/sunrise/f/au;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sunrise/f/au;->c:Ljava/lang/Object;

    iput p4, p0, Lcom/sunrise/f/au;->d:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    if-nez v0, :cond_0

    const-string v0, "$"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/au;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    invoke-virtual {v1}, Lcom/sunrise/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/f/au;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    invoke-virtual {v1}, Lcom/sunrise/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/f/au;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
