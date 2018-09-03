.class public Lcom/sunrise/reader/ReaderServerInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1771

    iput v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->e:I

    iput v1, p0, Lcom/sunrise/reader/ReaderServerInfo;->f:I

    iput v1, p0, Lcom/sunrise/reader/ReaderServerInfo;->g:I

    iput v1, p0, Lcom/sunrise/reader/ReaderServerInfo;->h:I

    iput v1, p0, Lcom/sunrise/reader/ReaderServerInfo;->i:I

    return-void
.end method


# virtual methods
.method public host(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderServerInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public mport()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->e:I

    return v0
.end method

.method public mport(I)Lcom/sunrise/reader/ReaderServerInfo;
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/ReaderServerInfo;->e:I

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sunrise/reader/ReaderServerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderServerInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public port()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->c:I

    return v0
.end method

.method public port(I)Lcom/sunrise/reader/ReaderServerInfo;
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/ReaderServerInfo;->c:I

    return-object p0
.end method

.method public priority()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->d:I

    return v0
.end method

.method public priority(I)Lcom/sunrise/reader/ReaderServerInfo;
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/ReaderServerInfo;->d:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/ReaderServerInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method
