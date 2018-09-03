.class public Lcom/sunrise/e/d;
.super Lcom/sunrise/e/l;


# instance fields
.field private final c:Ljava/lang/reflect/Type;

.field private d:I

.field private e:Lcom/sunrise/e/s;


# direct methods
.method public constructor <init>(Lcom/sunrise/d/j;Ljava/lang/Class;Lcom/sunrise/h/c;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/sunrise/e/l;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    iget-object v0, p3, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sunrise/e/d;->c:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/sunrise/e/d;->c:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/sunrise/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/e/d;->a:Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    invoke-virtual {p0, p1, p3, v0}, Lcom/sunrise/e/d;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sunrise/e/d;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/sunrise/e/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 11

    const/4 v5, -0x1

    const/16 v10, 0x10

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sunrise/e/d;->c:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/sunrise/e/d;->e:Lcom/sunrise/e/s;

    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_7

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_9

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v7, v2

    move v2, v4

    :goto_1
    if-ge v2, v7, :cond_8

    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v2

    :goto_2
    if-eq v0, v5, :cond_7

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/sunrise/e/d;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    :goto_3
    iget-object v3, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v5, 0xe

    if-ne v2, v5, :cond_5

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/e/d;->e:Lcom/sunrise/e/s;

    iget-object v2, p0, Lcom/sunrise/e/d;->e:Lcom/sunrise/e/s;

    invoke-interface {v2}, Lcom/sunrise/e/s;->a_()I

    move-result v2

    iput v2, p0, Lcom/sunrise/e/d;->d:I

    :cond_0
    iget v2, p0, Lcom/sunrise/e/d;->d:I

    invoke-interface {v3, v2}, Lcom/sunrise/d/d;->a(I)V

    move v2, v4

    :goto_4
    sget-object v4, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v3, v4}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_5
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v10, :cond_2

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    goto :goto_5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    invoke-interface {v3, v10}, Lcom/sunrise/d/d;->a(I)V

    :goto_6
    return-void

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v1, v4}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p3}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v10, :cond_4

    iget v4, p0, Lcom/sunrise/e/d;->d:I

    invoke-interface {v3, v4}, Lcom/sunrise/d/d;->a(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/e/d;->e:Lcom/sunrise/e/s;

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p3}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;)V

    goto :goto_6

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v0, v5

    goto/16 :goto_2

    :cond_9
    move-object v6, v2

    goto/16 :goto_0
.end method
