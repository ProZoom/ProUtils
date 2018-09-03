.class public Lcom/sunrise/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# instance fields
.field protected final a:[Ljava/lang/Enum;

.field private final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/e/h;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/sunrise/e/h;->a:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/h;->a:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lcom/sunrise/d/d;->n()I

    move-result v0

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(I)V

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sunrise/e/h;->a:[Ljava/lang/Enum;

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/h;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sunrise/a/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sunrise/e/h;->a:[Ljava/lang/Enum;

    aget-object v0, v1, v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sunrise/e/h;->b:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(I)V
    :try_end_1
    .catch Lcom/sunrise/a/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/h;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/sunrise/a/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
