.class public Lcom/sunrise/u/b;
.super Lcom/sunrise/u/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/sunrise/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/sunrise/u/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/u/a;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sunrise/u/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/sunrise/a/e;

    invoke-direct {v0}, Lcom/sunrise/a/e;-><init>()V

    iput-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    iput-object p1, p0, Lcom/sunrise/u/b;->a:Ljava/lang/String;

    return-void
.end method

.method private i()Lcom/sunrise/a/e;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Lcom/sunrise/a/e;->d(Ljava/lang/String;)Lcom/sunrise/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/a/e;

    invoke-direct {v0}, Lcom/sunrise/a/e;-><init>()V

    iget-object v1, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2, v0}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/sunrise/a/e;)Lcom/sunrise/u/b;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    const-string v1, "BODY"

    invoke-virtual {v0, v1, p1}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;
    .locals 2

    invoke-virtual {p0}, Lcom/sunrise/u/b;->h()Lcom/sunrise/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sunrise/a/e;

    invoke-direct {v1}, Lcom/sunrise/a/e;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/sunrise/a/e;

    invoke-virtual {p0, v0}, Lcom/sunrise/u/b;->a(Lcom/sunrise/a/e;)Lcom/sunrise/u/b;

    move-object v0, v1

    :cond_0
    instance-of v1, v0, Lcom/sunrise/a/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sunrise/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4e0d\u80fd\u5c06\u503c\u8bbe\u7f6e\u5230 JSONArray \u5bf9\u8c61"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/sunrise/u/b;->h()Lcom/sunrise/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/sunrise/a/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sunrise/a/e;

    invoke-virtual {v0, p1}, Lcom/sunrise/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4e0d\u80fd\u4ece JSONArray \u5bf9\u8c61\u83b7\u53d6\u503c"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    invoke-virtual {v0}, Lcom/sunrise/a/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/u/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sunrise/v/d;

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public varargs c([B)Lcom/sunrise/u/a;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/u/b;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/sunrise/a/a;->b(Ljava/lang/String;)Lcom/sunrise/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sunrise/v/d;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0}, Lcom/sunrise/u/b;->i()Lcom/sunrise/a/e;

    move-result-object v0

    const-string v1, "CODE"

    invoke-virtual {v0, v1}, Lcom/sunrise/a/e;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/sunrise/a/a;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/u/b;->b:Lcom/sunrise/a/e;

    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Lcom/sunrise/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/a/a;

    return-object v0
.end method
