.class public Lcom/sunrise/f/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/ao;

    invoke-direct {v0}, Lcom/sunrise/f/ao;-><init>()V

    sput-object v0, Lcom/sunrise/f/ao;->a:Lcom/sunrise/f/ao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/sunrise/d/a;Ljava/lang/Class;Lcom/sunrise/a/b;)Ljava/lang/Object;
    .locals 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p3, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/sunrise/a/b;->size()I

    move-result v8

    invoke-static {p2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_6

    invoke-virtual {p3, v7}, Lcom/sunrise/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    invoke-static {v4, v7, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_3
    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    check-cast v0, Lcom/sunrise/a/b;

    invoke-direct {p0, p1, p2, v0}, Lcom/sunrise/f/ao;->a(Lcom/sunrise/d/a;Ljava/lang/Class;Lcom/sunrise/a/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_3
    instance-of v1, v0, Lcom/sunrise/a/b;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/sunrise/a/b;

    invoke-virtual {v1}, Lcom/sunrise/a/b;->size()I

    move-result v9

    move v5, v6

    move v2, v6

    :goto_4
    if-ge v5, v9, :cond_5

    invoke-virtual {v1, v5}, Lcom/sunrise/a/b;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p3, :cond_4

    invoke-virtual {v1, v7, v4}, Lcom/sunrise/a/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/sunrise/a/b;->toArray()[Ljava/lang/Object;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v4}, Lcom/sunrise/a/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/sunrise/a/b;->a(Ljava/lang/reflect/Type;)V

    move-object v0, v4

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_6

    :cond_8
    move-object v1, v3

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v5}, Lcom/sunrise/d/d;->a(I)V

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/sunrise/d/d;->t()[B

    move-result-object v4

    invoke-interface {v0, v5}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v1

    iget-object v1, v1, Lcom/sunrise/d/i;->d:Ljava/lang/reflect/Type;

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_8

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    move-object v2, v4

    :goto_1
    array-length v4, v5

    if-ge v3, v4, :cond_3

    aget-object v4, v5, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Class;

    :goto_3
    new-instance v1, Lcom/sunrise/a/b;

    invoke-direct {v1}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {p1, v0, v1, p3}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/sunrise/f/ao;->a(Lcom/sunrise/d/a;Ljava/lang/Class;Lcom/sunrise/a/b;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-class v0, Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_7
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v4

    goto :goto_2
.end method

.method public final a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    move-object/from16 v3, p2

    check-cast v3, [Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, [Ljava/lang/Object;

    if-nez p2, :cond_0

    sget-object v3, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    array-length v5, v9

    add-int/lit8 v14, v5, -0x1

    const/4 v3, -0x1

    if-ne v14, v3, :cond_1

    const-string v3, "[]"

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    sget-object v3, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->c()V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    if-eqz v3, :cond_2

    const/16 v4, 0x2c

    invoke-virtual {v13, v4}, Lcom/sunrise/f/az;->write(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_2
    aget-object v4, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->d()V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    const/16 v3, 0x5d

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v11, v3

    move-object v3, v4

    :goto_2
    if-ge v11, v14, :cond_8

    :try_start_1
    aget-object v5, v9, v11

    if-nez v5, :cond_5

    const-string v4, "null,"

    invoke-virtual {v13, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    move-object v4, v10

    :goto_3
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-object v10, v4

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    move-object v4, v10

    :goto_4
    const/16 v5, 0x2c

    invoke-virtual {v13, v5}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v3

    :cond_6
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    if-ne v12, v10, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v4, v10

    goto :goto_4

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v4, v12

    goto :goto_4

    :cond_8
    aget-object v3, v9, v14

    if-nez v3, :cond_9

    const-string v3, "null]"

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto/16 :goto_0

    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    :goto_6
    const/16 v3, 0x5d

    invoke-virtual {v13, v3}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    goto :goto_5

    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
