.class public Lcom/sunrise/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/p;

    invoke-direct {v0}, Lcom/sunrise/f/p;-><init>()V

    sput-object v0, Lcom/sunrise/f/p;->a:Lcom/sunrise/f/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/sunrise/h/k;->c(Ljava/lang/Object;)Ljava/lang/Character;

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

    check-cast p2, Ljava/lang/Character;

    if-nez p2, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
