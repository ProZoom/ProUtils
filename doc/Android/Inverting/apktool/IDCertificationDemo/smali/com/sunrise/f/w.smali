.class public Lcom/sunrise/f/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/w;

    invoke-direct {v0}, Lcom/sunrise/f/w;-><init>()V

    sput-object v0, Lcom/sunrise/f/w;->a:Lcom/sunrise/f/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Lcom/sunrise/f/az;->a(Ljava/lang/Enum;)V

    return-void
.end method
