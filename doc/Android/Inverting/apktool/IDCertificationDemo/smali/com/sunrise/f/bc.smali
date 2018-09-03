.class public Lcom/sunrise/f/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/bc;

    invoke-direct {v0}, Lcom/sunrise/f/bc;-><init>()V

    sput-object v0, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
