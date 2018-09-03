.class public Lcom/sunrise/f/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/r;

    invoke-direct {v0}, Lcom/sunrise/f/r;-><init>()V

    sput-object v0, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sunrise/d/d;->a(I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/sunrise/a/b;

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->b(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/sunrise/h/k;->f(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v2, p3}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "java."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v4

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v7, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    sget-object v0, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v1

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    iget-object v8, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    invoke-virtual {p1, v8, p2, p3, v1}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v2, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v7, v2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    const-string v2, "Set"

    invoke-virtual {v7, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    :cond_2
    :goto_1
    const/16 v2, 0x5b

    :try_start_0
    invoke-virtual {v7, v2}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v0, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v0, 0x1

    if-eqz v0, :cond_3

    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {v7}, Lcom/sunrise/f/az;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    goto :goto_2

    :cond_4
    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const-string v2, "TreeSet"

    invoke-virtual {v7, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->b(I)V

    move v0, v6

    goto :goto_2

    :cond_6
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/sunrise/f/az;->a(J)V

    sget-object v0, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->write(I)V

    move v0, v6

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    add-int/lit8 v1, v6, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move v0, v6

    goto :goto_2

    :cond_8
    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v8, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v8, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v0

    :cond_9
    move v0, v6

    goto :goto_2
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
