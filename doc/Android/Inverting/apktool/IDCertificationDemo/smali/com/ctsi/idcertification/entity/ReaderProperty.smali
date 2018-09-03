.class public Lcom/ctsi/idcertification/entity/ReaderProperty;
.super Ljava/lang/Object;
.source "ReaderProperty.java"


# instance fields
.field public Date:Ljava/lang/String;

.field public Model:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public NetWork:Ljava/lang/String;

.field public SerialNumber:Ljava/lang/String;

.field public Version:Ljava/lang/String;

.field public readerType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->NetWork:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->readerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->SerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Date:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Model:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setNetWork(Ljava/lang/String;)V
    .locals 0
    .param p1, "netWork"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->NetWork:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setReaderType(Ljava/lang/String;)V
    .locals 0
    .param p1, "readerType"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->readerType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->SerialNumber:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/ReaderProperty;->Version:Ljava/lang/String;

    .line 29
    return-void
.end method
