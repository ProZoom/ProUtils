.class public Lcom/sunrise/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/g/a;

    invoke-direct {v0}, Lcom/sunrise/g/a;-><init>()V

    sput-object v0, Lcom/sunrise/g/a;->a:Lcom/sunrise/g/a;

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

    invoke-virtual {p1}, Lcom/sunrise/f/af;->f()Lcom/sunrise/f/az;

    move-result-object v0

    check-cast p2, Lspringfox/documentation/spring/web/json/Json;

    invoke-virtual {p2}, Lspringfox/documentation/spring/web/json/Json;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    return-void
.end method
