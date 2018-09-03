.class public Lcom/sunrise/reader/ManagerInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/Map;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/util/List;

.field private y:Ljava/util/List;

.field private z:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/reader/ManagerInfo;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/reader/ManagerInfo;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->t:Ljava/lang/String;

    const-string v0, "3.9"

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->u:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/reader/ManagerInfo;->w:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->y:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->z:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public accessAccount(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public accessAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public accessPassword(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public accessPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public apiVersion(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->v:Ljava/lang/String;

    return-object p0
.end method

.method public apiVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public appid(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->A:Ljava/lang/String;

    return-object p0
.end method

.method public appid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public authorise(Z)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/sunrise/reader/ManagerInfo;->w:Z

    return-object p0
.end method

.method public authorise()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/ManagerInfo;->w:Z

    return v0
.end method

.method public connectMethod()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/ManagerInfo;->h:I

    return v0
.end method

.method public crmSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public crmSn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public datas(Ljava/util/Map;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public datas()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->z:Ljava/util/Map;

    return-object v0
.end method

.method public deviceSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public deviceSn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public driverVersion(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->u:Ljava/lang/String;

    return-object p0
.end method

.method public driverVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getFactoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getProductionDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderSN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getSignRandom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public host(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public identity(Ljava/util/Map;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->i:Ljava/util/Map;

    return-object p0
.end method

.method public identity()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->i:Ljava/util/Map;

    return-object v0
.end method

.method public isDecryptPhoto(Z)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/sunrise/reader/ManagerInfo;->j:Z

    return-object p0
.end method

.method public isDecryptPhoto()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/reader/ManagerInfo;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sunrise/reader/ManagerInfo;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public port()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/ManagerInfo;->c:I

    return v0
.end method

.method public port(I)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/ManagerInfo;->c:I

    return-object p0
.end method

.method public preferServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public preferServer()Lcom/sunrise/reader/ReaderServerInfo;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preferServers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->x:Ljava/util/List;

    return-object v0
.end method

.method public redisServer(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->l:Ljava/lang/String;

    return-object p0
.end method

.method public redisServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectMethod(I)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput p1, p0, Lcom/sunrise/reader/ManagerInfo;->h:I

    return-object p0
.end method

.method public setFactoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setHardwareModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public setProductionDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setReaderSN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public setServer(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/ManagerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setSignRandom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public theSetServer()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->y:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public token(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ManagerInfo;->k:Ljava/lang/String;

    return-object p0
.end method

.method public token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/ManagerInfo;->k:Ljava/lang/String;

    return-object v0
.end method
