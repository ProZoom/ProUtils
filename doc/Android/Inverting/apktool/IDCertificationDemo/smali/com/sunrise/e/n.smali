.class public Lcom/sunrise/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# instance fields
.field protected final a:[Lcom/sunrise/e/l;

.field protected final b:Ljava/lang/Class;

.field public final c:Lcom/sunrise/h/h;

.field private final d:[Lcom/sunrise/e/l;


# direct methods
.method public constructor <init>(Lcom/sunrise/d/j;Lcom/sunrise/h/h;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p2, Lcom/sunrise/h/h;->a:Ljava/lang/Class;

    iput-object v1, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, p2, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    array-length v1, v1

    new-array v1, v1, [Lcom/sunrise/e/l;

    iput-object v1, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    iget-object v1, p2, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p2, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    aget-object v3, v3, v1

    invoke-virtual {p1, p1, p2, v3}, Lcom/sunrise/d/j;->a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;Lcom/sunrise/h/c;)Lcom/sunrise/e/l;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v1, v1

    new-array v1, v1, [Lcom/sunrise/e/l;

    iput-object v1, p0, Lcom/sunrise/e/n;->d:[Lcom/sunrise/e/l;

    iget-object v1, p2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sunrise/e/n;->a(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/n;->d:[Lcom/sunrise/e/l;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sunrise/d/j;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    iget-object v0, p1, Lcom/sunrise/d/j;->d:Lcom/sunrise/a/k;

    invoke-static {p2, p3, v0}, Lcom/sunrise/h/h;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/sunrise/a/k;)Lcom/sunrise/h/h;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sunrise/e/n;-><init>(Lcom/sunrise/d/j;Lcom/sunrise/h/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sunrise/e/l;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gt v1, v0, :cond_3

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_1
    if-lez v4, :cond_2

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method protected a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;Ljava/lang/String;)Lcom/sunrise/e/n;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/sunrise/h/h;->k:Lcom/sunrise/b/d;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/sunrise/h/h;->k:Lcom/sunrise/b/d;

    invoke-interface {v0}, Lcom/sunrise/b/d;->k()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    instance-of v5, v0, Lcom/sunrise/e/n;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/sunrise/e/n;

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v6, v5, Lcom/sunrise/h/h;->l:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1, v5, p3}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;Ljava/lang/String;)Lcom/sunrise/e/n;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/sunrise/d/d;C)Ljava/lang/Enum;
    .locals 3

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p2

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/sunrise/a/e;

    invoke-direct {v2}, Lcom/sunrise/a/e;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->c:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v1, Lcom/sunrise/h/h;->c:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget v1, v1, Lcom/sunrise/h/h;->g:I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v3, Lcom/sunrise/d/c;->m:Lcom/sunrise/d/c;

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v3, v2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    iget-object v6, v5, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_3

    :try_start_1
    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lcom/sunrise/h/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v3

    iget-object v1, v3, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_9

    check-cast p2, Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "$"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v3, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    :goto_4
    const/16 v1, 0x24

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gt v3, v1, :cond_6

    aget-char v9, v6, v3

    const/16 v1, 0x24

    if-ne v9, v1, :cond_8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-eqz v10, :cond_8

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_5
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to find class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    new-instance v2, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v3, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    goto/16 :goto_1

    :catch_6
    move-exception v1

    new-instance v2, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move-object v1, v2

    goto/16 :goto_5

    :cond_9
    move-object v4, v1

    goto/16 :goto_3
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v3, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    array-length v5, v1

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_e

    add-int/lit8 v0, v5, -0x1

    if-ne v2, v0, :cond_1

    const/16 v0, 0x5d

    :goto_1
    iget-object v1, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    aget-object v1, v1, v2

    iget-object v6, v1, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v6, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(C)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;I)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2c

    goto :goto_1

    :cond_2
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_3

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->f(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->b(C)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_5

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/sunrise/d/a;->c()Lcom/sunrise/d/k;

    move-result-object v7

    invoke-interface {v3, v6, v7, v0}, Lcom/sunrise/d/d;->a(Ljava/lang/Class;Lcom/sunrise/d/k;C)Ljava/lang/Enum;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/16 v6, 0x30

    if-lt v7, v6, :cond_7

    const/16 v6, 0x39

    if-gt v7, v6, :cond_7

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(C)I

    move-result v6

    move-object v0, v1

    check-cast v0, Lcom/sunrise/e/g;

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sunrise/e/g;->a(Lcom/sunrise/d/j;)Lcom/sunrise/e/s;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/h;

    invoke-virtual {v0, v6}, Lcom/sunrise/e/h;->a(I)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3, v0}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/d;C)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->e(C)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_9
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_a

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->c(C)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->d(C)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_c

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_c

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->b(C)J

    move-result-wide v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4, v0}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const/16 v6, 0xe

    invoke-interface {v3, v6}, Lcom/sunrise/d/d;->a(I)V

    iget-object v6, v1, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v6, v6, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    const/16 v0, 0xf

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/d;I)V

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0x10

    goto :goto_4

    :cond_e
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V

    return-object v4
.end method

.method protected a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 20

    const-class v4, Lcom/sunrise/a/a;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/sunrise/a/e;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object p4

    :goto_0
    return-object p4

    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    move-object v10, v4

    check-cast v10, Lcom/sunrise/d/e;

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Lcom/sunrise/d/e;->a(I)V

    const/16 p4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v4

    if-eqz p4, :cond_52

    if-eqz v4, :cond_52

    iget-object v4, v4, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    move-object v11, v4

    :goto_1
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xd

    if-ne v5, v4, :cond_5

    const/16 v4, 0x10

    :try_start_0
    invoke-virtual {v10, v4}, Lcom/sunrise/d/e;->a(I)V

    if-nez p4, :cond_3

    invoke-virtual/range {p0 .. p2}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    :cond_3
    if-eqz v12, :cond_4

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto :goto_0

    :cond_5
    const/16 v4, 0xe

    if-ne v5, v4, :cond_9

    :try_start_1
    sget-object v4, Lcom/sunrise/d/c;->n:Lcom/sunrise/d/c;

    iget v4, v4, Lcom/sunrise/d/c;->r:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget v6, v6, Lcom/sunrise/h/h;->j:I

    and-int/2addr v6, v4

    if-nez v6, :cond_6

    sget-object v6, Lcom/sunrise/d/c;->n:Lcom/sunrise/d/c;

    invoke-virtual {v10, v6}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/c;)Z

    move-result v6

    if-nez v6, :cond_6

    and-int v4, v4, p5

    if-eqz v4, :cond_8

    :cond_6
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p4}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eqz v12, :cond_7

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object/from16 p4, v7

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/16 v4, 0xc

    if-eq v5, v4, :cond_10

    const/16 v4, 0x10

    if-eq v5, v4, :cond_10

    :try_start_2
    invoke-virtual {v10}, Lcom/sunrise/d/e;->p()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    const/4 v7, 0x0

    if-eqz v12, :cond_a

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x4

    if-ne v5, v4, :cond_d

    :try_start_3
    invoke-virtual {v10}, Lcom/sunrise/d/e;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v10}, Lcom/sunrise/d/e;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v12, :cond_c

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_d
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sunrise/d/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sunrise/d/e;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p3

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_e

    const-string v5, ", fieldName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_e
    new-instance v5, Lcom/sunrise/a/d;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v7, p4

    :goto_3
    if-eqz v12, :cond_f

    iput-object v7, v12, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v4

    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sunrise/d/a;->f:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/sunrise/d/a;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    const/4 v4, 0x0

    move/from16 v17, v4

    move-object/from16 v7, p4

    move-object v4, v12

    :goto_4
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    array-length v13, v13

    move/from16 v0, v17

    if-ge v0, v13, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    aget-object v8, v5, v17

    iget-object v6, v8, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v5, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    :goto_5
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v16, :cond_1a

    iget-object v13, v15, Lcom/sunrise/h/c;->m:[C

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_12

    const-class v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_17

    :cond_12
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->c([C)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_15

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    :goto_6
    if-nez v13, :cond_3c

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    invoke-virtual {v10, v6}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2b

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v12

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v12, v0, :cond_2a

    const/16 v5, 0x10

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->a(I)V

    :goto_7
    if-nez v7, :cond_4e

    if-nez v9, :cond_48

    invoke-virtual/range {p0 .. p2}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object p4

    if-nez v4, :cond_13

    :try_start_7
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v4

    :cond_13
    if-eqz v4, :cond_14

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_15
    :try_start_8
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    :cond_16
    :goto_8
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto/16 :goto_4

    :cond_17
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_18

    const-class v18, Ljava/lang/Long;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_1b

    :cond_18
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->e([C)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_19

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    goto :goto_6

    :cond_19
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v13, v0, :cond_16

    :cond_1a
    move v13, v8

    move v8, v6

    goto :goto_6

    :cond_1b
    const-class v18, Ljava/lang/String;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_1d

    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->b([C)Ljava/lang/String;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_1c

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_1c
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    goto :goto_8

    :cond_1d
    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_1e

    const-class v18, Ljava/lang/Boolean;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_20

    :cond_1e
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->d([C)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_1f

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_1f
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    goto :goto_8

    :cond_20
    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_21

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_23

    :cond_21
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->f([C)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_22

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_22
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    goto/16 :goto_8

    :cond_23
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_24

    const-class v18, Ljava/lang/Double;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_26

    :cond_24
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->g([C)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget v13, v10, Lcom/sunrise/d/e;->n:I

    if-lez v13, :cond_25

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_25
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    goto/16 :goto_8

    :cond_26
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v18

    if-eqz v18, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sunrise/e/h;

    move/from16 v18, v0

    if-eqz v18, :cond_29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v13, v0}, Lcom/sunrise/d/e;->a([CLcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v13

    iget v0, v10, Lcom/sunrise/d/e;->n:I

    move/from16 v18, v0

    if-lez v18, :cond_28

    const/4 v8, 0x1

    const/4 v6, 0x1

    invoke-static {v14, v13}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    :cond_27
    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_28
    iget v13, v10, Lcom/sunrise/d/e;->n:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_27

    goto/16 :goto_8

    :cond_29
    invoke-virtual {v10, v13}, Lcom/sunrise/d/e;->a([C)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    move v13, v8

    move v8, v6

    goto/16 :goto_6

    :cond_2a
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v12, v0, :cond_2b

    sget-object v12, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-virtual {v10, v12}, Lcom/sunrise/d/e;->a(Lcom/sunrise/d/c;)Z

    move-result v12

    if-nez v12, :cond_16

    :cond_2b
    const-string v12, "$ref"

    if-ne v12, v6, :cond_35

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->b(I)V

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_32

    invoke-virtual {v10}, Lcom/sunrise/d/e;->l()Ljava/lang/String;

    move-result-object v6

    const-string v5, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v7, v11, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :goto_9
    const/16 v5, 0xd

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->a(I)V

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_33

    new-instance v5, Lcom/sunrise/a/d;

    const-string v6, "illegal ref"

    invoke-direct {v5, v6}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v12, v4

    move-object v4, v5

    goto/16 :goto_3

    :cond_2c
    const-string v5, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, v11, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    iget-object v8, v5, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    if-eqz v8, :cond_2d

    iget-object v7, v5, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    goto :goto_9

    :cond_2d
    new-instance v8, Lcom/sunrise/d/b;

    invoke-direct {v8, v5, v6}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/sunrise/d/a;->f:I

    goto :goto_9

    :cond_2e
    const-string v5, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move-object v5, v11

    :goto_a
    iget-object v8, v5, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    if-eqz v8, :cond_2f

    iget-object v5, v5, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    goto :goto_a

    :cond_2f
    iget-object v8, v5, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    if-eqz v8, :cond_30

    iget-object v7, v5, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    goto :goto_9

    :cond_30
    new-instance v8, Lcom/sunrise/d/b;

    invoke-direct {v8, v5, v6}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/sunrise/d/a;->f:I

    goto :goto_9

    :cond_31
    new-instance v5, Lcom/sunrise/d/b;

    invoke-direct {v5, v11, v6}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/sunrise/d/a;->f:I

    goto :goto_9

    :cond_32
    new-instance v6, Lcom/sunrise/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal ref, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_33
    const/16 v5, 0x10

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->a(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v7, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_34

    iput-object v7, v4, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_34
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :cond_35
    :try_start_9
    sget-object v12, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    if-ne v12, v6, :cond_3d

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->b(I)V

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3b

    invoke-virtual {v10}, Lcom/sunrise/d/e;->l()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x10

    invoke-virtual {v10, v5}, Lcom/sunrise/d/e;->a(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->l:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_16

    invoke-virtual {v10}, Lcom/sunrise/d/e;->d()V

    goto/16 :goto_7

    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5, v8}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;Ljava/lang/String;)Lcom/sunrise/e/n;

    move-result-object v6

    const/4 v5, 0x0

    if-nez v6, :cond_38

    invoke-virtual {v9}, Lcom/sunrise/d/j;->c()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_37

    if-eqz v5, :cond_3a

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v6

    :cond_38
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v6, v0, v5, v1}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object p4

    if-eqz v4, :cond_39

    iput-object v7, v4, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_39
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_3a
    :try_start_a
    new-instance v5, Lcom/sunrise/a/d;

    const-string v6, "type not match"

    invoke-direct {v5, v6}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3b
    new-instance v5, Lcom/sunrise/a/d;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3c
    move-object v6, v12

    :cond_3d
    if-nez v7, :cond_4f

    if-nez v9, :cond_4f

    invoke-virtual/range {p0 .. p2}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3e

    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sunrise/e/n;->d:[Lcom/sunrise/e/l;

    array-length v12, v12

    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    :cond_3e
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v7, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v4

    move-object v12, v4

    :goto_b
    if-eqz v13, :cond_44

    if-nez v8, :cond_40

    :try_start_b
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v2, v9}, Lcom/sunrise/e/l;->a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    :cond_3f
    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_45

    move-object v4, v12

    goto/16 :goto_8

    :cond_40
    if-nez v7, :cond_42

    iget-object v4, v15, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    :goto_c
    iget v4, v10, Lcom/sunrise/d/e;->n:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3f

    move-object v4, v12

    goto/16 :goto_7

    :cond_42
    if-nez v5, :cond_43

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_41

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_41

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_41

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_41

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_41

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v5}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :catchall_2
    move-exception v4

    goto/16 :goto_3

    :cond_43
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v5}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_44
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_51

    invoke-virtual {v10}, Lcom/sunrise/d/e;->d()V

    move-object v4, v12

    goto/16 :goto_7

    :cond_45
    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_46

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Lcom/sunrise/d/e;->a(I)V

    move-object v4, v12

    goto/16 :goto_7

    :cond_46
    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_47

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_51

    :cond_47
    new-instance v4, Lcom/sunrise/a/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, unexpect token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/sunrise/d/e;->a()I

    move-result v6

    invoke-static {v6}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_48
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v6, v5, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v8, v6

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v8, :cond_49

    aget-object v12, v6, v5

    iget-object v12, v12, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v5, :cond_4b

    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v7

    move-object/from16 p4, v7

    :goto_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->f:Ljava/lang/reflect/Method;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-nez v5, :cond_4c

    if-eqz v4, :cond_4a

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_4a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :try_start_f
    new-instance v6, Lcom/sunrise/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create instance error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v9, v9, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_4b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v5, :cond_4e

    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v5, v5, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v7

    move-object/from16 p4, v7

    goto :goto_e

    :catch_1
    move-exception v5

    :try_start_11
    new-instance v6, Lcom/sunrise/a/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create factory method error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v9, v9, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_4c
    const/4 v6, 0x0

    :try_start_12
    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v7

    if-eqz v4, :cond_4d

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_4d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object/from16 p4, v7

    goto/16 :goto_0

    :catch_2
    move-exception v5

    :try_start_13
    new-instance v6, Lcom/sunrise/a/d;

    const-string v7, "build object error"

    invoke-direct {v6, v7, v5}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :catchall_3
    move-exception v5

    move-object v12, v4

    move-object/from16 v7, p4

    move-object v4, v5

    goto/16 :goto_3

    :cond_4e
    move-object/from16 p4, v7

    goto/16 :goto_e

    :cond_4f
    move-object v12, v4

    goto/16 :goto_b

    :cond_50
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    goto/16 :goto_5

    :cond_51
    move-object v4, v12

    goto/16 :goto_8

    :cond_52
    move-object v11, v4

    goto/16 :goto_1
.end method

.method public a(Ljava/util/Map;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->f:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sunrise/e/n;->a(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v5, v5, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v5, v5, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    invoke-static {v0, v1, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v2, v1, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v4, v2

    new-array v5, v4, [Ljava/lang/Object;

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v0, v0, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v3, v3, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    iget-object v1, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v1, v1, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v0, v0, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/e/n;->c:Lcom/sunrise/h/h;

    iget-object v3, v3, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lcom/sunrise/d/d;I)V
    .locals 2

    invoke-interface {p1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 3

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-virtual {p0, p2}, Lcom/sunrise/e/n;->b(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sunrise/d/c;->i:Lcom/sunrise/d/c;

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/e/n;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p3, p2}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/sunrise/e/l;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sunrise/d/d;->b(I)V

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/sunrise/e/l;->a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/sunrise/e/l;
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sunrise/e/n;->a(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v2, "is"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    array-length v8, v7

    move v5, v1

    :goto_1
    if-ge v5, v8, :cond_a

    aget-object v2, v7, v5

    iget-object v9, v2, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v10, v9, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v9, v9, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    :goto_2
    if-nez v2, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_6

    const-string v0, "_"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v0, v4

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/sunrise/e/n;->a(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/sunrise/e/n;->a:[Lcom/sunrise/e/l;

    array-length v5, v4

    :goto_5
    if-ge v1, v5, :cond_8

    aget-object v0, v4, v1

    iget-object v6, v0, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v6, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    if-eqz v6, :cond_5

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v10, v11, :cond_4

    const-class v11, Ljava/lang/Boolean;

    if-ne v10, v11, :cond_5

    :cond_4
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_6
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_7

    const-string v0, "-"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v0, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move-object v2, v0

    goto :goto_2
.end method
