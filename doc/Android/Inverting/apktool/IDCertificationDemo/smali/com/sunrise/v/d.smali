.class public Lcom/sunrise/v/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Throwable;

.field private e:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/v/d;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunrise/v/d;->e:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sunrise/v/d;
    .locals 0

    iput p1, p0, Lcom/sunrise/v/d;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/sunrise/v/d;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/v/d;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sunrise/v/d;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/v/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/sunrise/v/d;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/v/d;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/v/d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/v/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/sunrise/v/d;->e:J

    return-wide v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/v/d;->d:Ljava/lang/Throwable;

    return-object v0
.end method
