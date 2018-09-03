.class public Lcom/sunrise/f/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/bb;

    invoke-direct {v0}, Lcom/sunrise/f/bb;-><init>()V

    sput-object v0, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunrise/d/a;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/sunrise/d/a;->l()Lcom/sunrise/d/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lcom/sunrise/d/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x4

    const-class v1, Ljava/lang/StringBuffer;

    if-ne p2, v1, :cond_2

    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-class v1, Ljava/lang/StringBuilder;

    if-ne p2, v1, :cond_4

    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/sunrise/f/bb;->a(Lcom/sunrise/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sunrise/f/bb;->a(Lcom/sunrise/f/af;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v1, Lcom/sunrise/f/ba;->h:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
