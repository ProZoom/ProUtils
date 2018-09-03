.class public Lcom/sunrise/f/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/v;


# instance fields
.field private b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/v;

    invoke-direct {v0}, Lcom/sunrise/f/v;-><init>()V

    sput-object v0, Lcom/sunrise/f/v;->a:Lcom/sunrise/f/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/f/v;->b:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v1, Lcom/sunrise/f/ba;->i:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sunrise/f/v;->b:Ljava/text/DecimalFormat;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sunrise/f/az;->a(DZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sunrise/f/v;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
