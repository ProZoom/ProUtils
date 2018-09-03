.class public Lcom/sunrise/f/ag;
.super Lcom/sunrise/f/ay;

# interfaces
.implements Lcom/sunrise/f/ap;


# instance fields
.field protected final a:[Lcom/sunrise/f/y;

.field protected final b:[Lcom/sunrise/f/y;

.field protected c:Lcom/sunrise/f/av;


# direct methods
.method public constructor <init>(Lcom/sunrise/f/av;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sunrise/f/ay;-><init>()V

    iput-object p1, p0, Lcom/sunrise/f/ag;->c:Lcom/sunrise/f/av;

    iget-object v0, p1, Lcom/sunrise/f/av;->e:[Lcom/sunrise/h/c;

    array-length v0, v0

    new-array v0, v0, [Lcom/sunrise/f/y;

    iput-object v0, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    new-instance v3, Lcom/sunrise/f/y;

    iget-object v4, p1, Lcom/sunrise/f/av;->a:Ljava/lang/Class;

    iget-object v5, p1, Lcom/sunrise/f/av;->e:[Lcom/sunrise/h/c;

    aget-object v5, v5, v0

    invoke-direct {v3, v4, v5}, Lcom/sunrise/f/y;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    iget-object v2, p1, Lcom/sunrise/f/av;->e:[Lcom/sunrise/h/c;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    iput-object v0, p0, Lcom/sunrise/f/ag;->a:[Lcom/sunrise/f/y;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    array-length v0, v0

    new-array v0, v0, [Lcom/sunrise/f/y;

    iput-object v0, p0, Lcom/sunrise/f/ag;->a:[Lcom/sunrise/f/y;

    :goto_1
    iget-object v0, p0, Lcom/sunrise/f/ag;->a:[Lcom/sunrise/f/y;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/f/ag;->a:[Lcom/sunrise/f/y;

    iget-object v2, p1, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sunrise/f/ag;->a(Ljava/lang/String;)Lcom/sunrise/f/y;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/sunrise/f/ag;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/util/Map;Lcom/sunrise/a/k;)Lcom/sunrise/f/av;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunrise/f/ag;-><init>(Lcom/sunrise/f/av;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C
    .locals 2

    iget-object v0, p1, Lcom/sunrise/f/af;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sunrise/f/af;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunrise/f/j;->a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ag;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/f/ag;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunrise/f/j;->a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_1

    :cond_1
    return p3
.end method

.method public a(Ljava/lang/String;)Lcom/sunrise/f/y;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gt v1, v0, :cond_3

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

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
    iget-object v0, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v2, p0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v5, v5, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/sunrise/f/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected a(Lcom/sunrise/f/af;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-object v1, p1, Lcom/sunrise/f/af;->a:Lcom/sunrise/f/aw;

    iget-object v1, v1, Lcom/sunrise/f/aw;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sunrise/f/ag;->c:Lcom/sunrise/f/av;

    iget-object v0, v0, Lcom/sunrise/f/av;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    move-object/from16 v17, v0

    if-nez p2, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/sunrise/f/az;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/sunrise/f/az;->f:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    move-object v12, v4

    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/f/ag;->c:Lcom/sunrise/f/av;

    iget v8, v4, Lcom/sunrise/f/av;->f:I

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;I)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v4, 0x5b

    move v6, v4

    :goto_2
    if-eqz v18, :cond_7

    const/16 v4, 0x5d

    move/from16 v16, v4

    :goto_3
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    array-length v4, v12

    if-lez v4, :cond_2

    sget-object v4, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->c()V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sunrise/f/ag;->c:Lcom/sunrise/f/av;

    iget v6, v6, Lcom/sunrise/f/av;->f:I

    sget-object v7, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    iget v7, v7, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/f/af;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p4

    if-eq v6, v0, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/Object;)V

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_8

    const/16 v4, 0x2c

    move v6, v4

    :goto_4
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/sunrise/f/az;->e:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/sunrise/f/az;->d:Z

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move v15, v4

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_a

    const/4 v13, 0x1

    :goto_6
    sget-object v4, Lcom/sunrise/f/ba;->k:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v19

    sget-object v4, Lcom/sunrise/f/ba;->z:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v20

    const/4 v4, 0x0

    move v14, v4

    :goto_7
    array-length v4, v12

    if-ge v14, v4, :cond_28

    aget-object v21, v12, v14

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v4, v4, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    move-object/from16 v23, v0

    if-eqz v19, :cond_b

    if-eqz v4, :cond_b

    move-object/from16 v0, v22

    iget-boolean v6, v0, Lcom/sunrise/h/c;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_b

    move v4, v13

    :goto_8
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move v13, v4

    goto :goto_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sunrise/f/ag;->a:[Lcom/sunrise/f/y;

    move-object v12, v4

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x7b

    move v6, v4

    goto/16 :goto_2

    :cond_7
    const/16 v4, 0x7d

    move/from16 v16, v4

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x0

    move v6, v4

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    move v15, v4

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    if-eqz v20, :cond_c

    if-nez v4, :cond_c

    move v4, v13

    goto :goto_8

    :cond_c
    :try_start_1
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sunrise/h/c;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_d

    move v4, v13

    goto :goto_8

    :cond_d
    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sunrise/f/y;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    :goto_9
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move v4, v13

    goto :goto_8

    :catch_0
    move-exception v4

    sget-object v6, Lcom/sunrise/f/ba;->B:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v11, 0x0

    goto :goto_9

    :cond_e
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v4

    :try_start_4
    const-string v6, "write javaBean error"

    if-eqz p2, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_f
    if-eqz p3, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fieldName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_11
    new-instance v7, Lcom/sunrise/a/d;

    invoke-direct {v7, v6, v4}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v4

    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/sunrise/f/ag;->b(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/sunrise/f/y;->d:Lcom/sunrise/f/i;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sunrise/f/ag;->a(Lcom/sunrise/f/af;Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_13

    if-nez v18, :cond_13

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/sunrise/f/y;->b:Z

    if-nez v4, :cond_13

    sget-object v4, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-nez v4, :cond_13

    move v4, v13

    goto/16 :goto_8

    :cond_13
    if-eqz v6, :cond_1a

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/sunrise/f/az;->j:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_14

    instance-of v4, v6, Ljava/lang/Byte;

    if-eqz v4, :cond_14

    move-object v0, v6

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_14

    move v4, v13

    goto/16 :goto_8

    :cond_14
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_15

    instance-of v4, v6, Ljava/lang/Short;

    if-eqz v4, :cond_15

    move-object v0, v6

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-nez v4, :cond_15

    move v4, v13

    goto/16 :goto_8

    :cond_15
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_16

    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_16

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_16

    move v4, v13

    goto/16 :goto_8

    :cond_16
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_17

    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_17

    move-object v0, v6

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v26, 0x0

    cmp-long v4, v8, v26

    if-nez v4, :cond_17

    move v4, v13

    goto/16 :goto_8

    :cond_17
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_18

    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_18

    move-object v0, v6

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_18

    move v4, v13

    goto/16 :goto_8

    :cond_18
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_19

    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_19

    move-object v0, v6

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v26, 0x0

    cmpl-double v4, v8, v26

    if-nez v4, :cond_19

    move v4, v13

    goto/16 :goto_8

    :cond_19
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_1a

    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_1a

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1a

    move v4, v13

    goto/16 :goto_8

    :cond_1a
    if-eqz v13, :cond_1b

    const/16 v4, 0x2c

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->write(I)V

    sget-object v4, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_1b
    move-object/from16 v0, v24

    if-eq v0, v10, :cond_1d

    if-nez v18, :cond_1c

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/String;Z)V

    :cond_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_1d
    if-eq v11, v6, :cond_1f

    if-nez v18, :cond_1e

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/y;->a(Lcom/sunrise/f/af;)V

    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1f
    if-nez v18, :cond_20

    if-eqz v15, :cond_22

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sunrise/h/c;->m:[C

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/sunrise/h/c;->m:[C

    array-length v8, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v8}, Lcom/sunrise/f/az;->write([CII)V

    :cond_20
    :goto_b
    if-nez v18, :cond_27

    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_26

    if-nez v6, :cond_24

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sunrise/f/az;->c:I

    sget-object v6, Lcom/sunrise/f/ba;->h:Lcom/sunrise/f/ba;

    iget v6, v6, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v4, v6

    if-nez v4, :cond_21

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sunrise/f/y;->c:I

    sget-object v6, Lcom/sunrise/f/ba;->h:Lcom/sunrise/f/ba;

    iget v6, v6, Lcom/sunrise/f/ba;->C:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    :cond_21
    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sunrise/f/y;->a(Lcom/sunrise/f/af;)V

    goto :goto_b

    :cond_23
    invoke-virtual/range {v17 .. v17}, Lcom/sunrise/f/az;->b()V

    goto :goto_a

    :cond_24
    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/sunrise/f/az;->d:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/String;C)V

    goto :goto_a

    :cond_26
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/sunrise/f/y;->a(Lcom/sunrise/f/af;Ljava/lang/Object;)V

    goto :goto_a

    :cond_27
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/sunrise/f/y;->a(Lcom/sunrise/f/af;Ljava/lang/Object;)V

    goto :goto_a

    :cond_28
    if-eqz v13, :cond_2a

    const/16 v4, 0x2c

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sunrise/f/ag;->b(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    array-length v4, v12

    if-lez v4, :cond_29

    sget-object v4, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->d()V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_29
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto/16 :goto_0

    :cond_2a
    const/4 v4, 0x0

    goto :goto_c

    :cond_2b
    move v4, v13

    goto/16 :goto_8
.end method

.method protected a(Lcom/sunrise/f/af;I)Z
    .locals 2

    sget-object v0, Lcom/sunrise/f/ba;->v:Lcom/sunrise/f/ba;

    iget v0, v0, Lcom/sunrise/f/ba;->C:I

    iget-object v1, p0, Lcom/sunrise/f/ag;->c:Lcom/sunrise/f/av;

    iget v1, v1, Lcom/sunrise/f/av;->f:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-boolean v1, v1, Lcom/sunrise/f/az;->h:Z

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    sget-object v2, Lcom/sunrise/f/ba;->p:Lcom/sunrise/f/ba;

    iget v2, v2, Lcom/sunrise/f/ba;->C:I

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/sunrise/f/au;->d:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    and-int v1, p3, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Lcom/sunrise/f/af;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/sunrise/f/af;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sunrise/f/af;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ah;

    invoke-interface {v0, p2}, Lcom/sunrise/f/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/f/ag;->m:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/f/ag;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ah;

    invoke-interface {v0, p2}, Lcom/sunrise/f/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Lcom/sunrise/f/af;Ljava/lang/Object;C)C
    .locals 2

    iget-object v0, p1, Lcom/sunrise/f/af;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sunrise/f/af;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunrise/f/c;->a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/f/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunrise/f/c;->a(Lcom/sunrise/f/af;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_1

    :cond_1
    return p3
.end method
