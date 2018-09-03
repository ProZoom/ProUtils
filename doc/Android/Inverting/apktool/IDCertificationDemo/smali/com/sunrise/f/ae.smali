.class public Lcom/sunrise/f/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/ae;

    invoke-direct {v0}, Lcom/sunrise/f/ae;-><init>()V

    sput-object v0, Lcom/sunrise/f/ae;->a:Lcom/sunrise/f/ae;

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

    check-cast p2, Lcom/sunrise/f/ad;

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/sunrise/f/ad;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
