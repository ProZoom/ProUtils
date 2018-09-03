.class public Lcom/sunrise/f/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/m;

    invoke-direct {v0}, Lcom/sunrise/f/m;-><init>()V

    sput-object v0, Lcom/sunrise/f/m;->a:Lcom/sunrise/f/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lcom/sunrise/d/d;->n()I

    move-result v1

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/sunrise/h/k;->o(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    sget-object v1, Lcom/sunrise/f/ba;->j:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
