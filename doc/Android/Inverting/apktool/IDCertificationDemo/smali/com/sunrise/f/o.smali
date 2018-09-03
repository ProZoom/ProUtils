.class public Lcom/sunrise/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunrise/d/a;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/sunrise/f/o;->a(Lcom/sunrise/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
