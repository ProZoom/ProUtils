.class public Lcom/sunrise/reader/GuidUtils;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/sunrise/reader/GuidUtils;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sunrise/reader/GuidUtils;
    .locals 1

    sget-object v0, Lcom/sunrise/reader/GuidUtils;->b:Lcom/sunrise/reader/GuidUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/reader/GuidUtils;

    invoke-direct {v0}, Lcom/sunrise/reader/GuidUtils;-><init>()V

    sput-object v0, Lcom/sunrise/reader/GuidUtils;->b:Lcom/sunrise/reader/GuidUtils;

    :cond_0
    sget-object v0, Lcom/sunrise/reader/GuidUtils;->b:Lcom/sunrise/reader/GuidUtils;

    return-object v0
.end method


# virtual methods
.method public clearUUID()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/reader/GuidUtils;->newRandom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public newRandom()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/reader/GuidUtils;->a:Ljava/lang/String;

    return-object v0
.end method
