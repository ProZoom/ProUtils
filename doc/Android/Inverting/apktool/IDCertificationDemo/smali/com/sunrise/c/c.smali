.class public final Lcom/sunrise/c/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/sunrise/c/c;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/sunrise/c/b;->j:Lcom/sunrise/c/c;

    if-nez v0, :cond_0

    iput-object p0, p1, Lcom/sunrise/c/b;->j:Lcom/sunrise/c/c;

    :goto_0
    iput-object p0, p1, Lcom/sunrise/c/b;->k:Lcom/sunrise/c/c;

    iput p2, p0, Lcom/sunrise/c/c;->b:I

    invoke-virtual {p1, p3}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/c/c;->c:I

    invoke-virtual {p1, p4}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/c/c;->d:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sunrise/c/b;->k:Lcom/sunrise/c/c;

    iput-object p0, v0, Lcom/sunrise/c/c;->a:Lcom/sunrise/c/c;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method a(Lcom/sunrise/c/a;)V
    .locals 2

    iget v0, p0, Lcom/sunrise/c/c;->b:I

    const v1, -0x60001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/c/c;->c:I

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v1, p0, Lcom/sunrise/c/c;->d:I

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    return-void
.end method

.method b()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
