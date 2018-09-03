.class Lcom/sunrise/BtReaderClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/BtReaderClient;->initReader(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/BtReaderClient;


# direct methods
.method constructor <init>(Lcom/sunrise/BtReaderClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/BtReaderClient$1;->a:Lcom/sunrise/BtReaderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idImage([B)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/BtReaderClient$1;->a:Lcom/sunrise/BtReaderClient;

    invoke-static {v0}, Lcom/sunrise/BtReaderClient;->access$000(Lcom/sunrise/BtReaderClient;)Lcom/sunrise/icardreader/model/IdentityCardZ;

    move-result-object v0

    iput-object p1, v0, Lcom/sunrise/icardreader/model/IdentityCardZ;->avatar:[B

    return-void
.end method

.method public idInfo(Lcom/sunrise/icardreader/model/IdentityCardZ;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/BtReaderClient$1;->a:Lcom/sunrise/BtReaderClient;

    invoke-static {v0, p1}, Lcom/sunrise/BtReaderClient;->access$002(Lcom/sunrise/BtReaderClient;Lcom/sunrise/icardreader/model/IdentityCardZ;)Lcom/sunrise/icardreader/model/IdentityCardZ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public idInfoText([B)V
    .locals 0

    return-void
.end method

.method public onNetDelayChange(J)V
    .locals 0

    return-void
.end method
