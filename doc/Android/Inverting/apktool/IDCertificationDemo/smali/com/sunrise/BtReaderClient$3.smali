.class Lcom/sunrise/BtReaderClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/BtReaderClient;->initReader(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/BtReaderClient;


# direct methods
.method constructor <init>(Lcom/sunrise/BtReaderClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/BtReaderClient$3;->a:Lcom/sunrise/BtReaderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryAgain(I)Z
    .locals 1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
