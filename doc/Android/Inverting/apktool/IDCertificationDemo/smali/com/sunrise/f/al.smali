.class public Lcom/sunrise/f/al;
.super Lcom/sunrise/f/ay;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/al;

    invoke-direct {v0}, Lcom/sunrise/f/al;-><init>()V

    sput-object v0, Lcom/sunrise/f/al;->a:Lcom/sunrise/f/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/f/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    move-object/from16 v16, v0

    if-nez p2, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v10, p2

    check-cast v10, Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p2}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v4, 0x7b

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->write(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->c()V

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sunrise/f/af;->a:Lcom/sunrise/f/aw;

    iget-object v6, v5, Lcom/sunrise/f/aw;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Lcom/sunrise/a/e;

    if-eq v5, v7, :cond_2

    const-class v7, Ljava/util/HashMap;

    if-eq v5, v7, :cond_2

    const-class v7, Ljava/util/LinkedHashMap;

    if-ne v5, v7, :cond_10

    :cond_2
    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_3
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v14, v4

    :cond_4
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->l:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v5, :cond_5

    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_11

    :cond_5
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->i:Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    if-eqz v5, :cond_7

    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_13

    :cond_7
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->k:Ljava/util/List;

    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_22

    if-eqz v5, :cond_9

    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_15

    :cond_9
    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v9}, Lcom/sunrise/f/al;->b(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->j:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sunrise/f/af;->n:Ljava/util/List;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_b

    :cond_a
    if-eqz v5, :cond_21

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_21

    :cond_b
    if-eqz v11, :cond_c

    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_17

    :cond_c
    const/4 v6, 0x0

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    :goto_4
    if-nez v6, :cond_d

    sget-object v4, Lcom/sunrise/f/ba;->c:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_d
    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_19

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-nez v14, :cond_e

    const/16 v5, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sunrise/f/az;->write(I)V

    :cond_e
    sget-object v5, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_f
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/sunrise/f/az;->a(Ljava/lang/String;Z)V

    :goto_5
    const/4 v15, 0x0

    if-nez v6, :cond_1d

    invoke-virtual/range {v16 .. v16}, Lcom/sunrise/f/az;->b()V

    move v14, v15

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_12

    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_6

    :cond_12
    invoke-static {v5}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_14

    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_8

    :cond_14
    invoke-static {v5}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_16

    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_22

    :cond_16
    invoke-static {v5}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/sunrise/f/al;->b(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto/16 :goto_3

    :cond_17
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_18

    instance-of v4, v11, Ljava/lang/Number;

    if-eqz v4, :cond_21

    :cond_18
    invoke-static {v11}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sunrise/f/al;->a(Lcom/sunrise/f/af;Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    goto/16 :goto_4

    :cond_19
    if-nez v14, :cond_1a

    const/16 v4, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->write(I)V

    :cond_1a
    sget-object v4, Lcom/sunrise/f/ba;->r:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-nez v4, :cond_1b

    sget-object v4, Lcom/sunrise/f/ba;->w:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-nez v4, :cond_1b

    sget-object v4, Lcom/sunrise/f/ba;->y:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    invoke-static {v11}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sunrise/f/af;->b(Ljava/lang/String;)V

    :goto_6
    const/16 v4, 0x3a

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v4

    :cond_1c
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    if-ne v14, v13, :cond_1e

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    move-object/from16 v5, p1

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v4, v12

    move-object v5, v13

    :goto_7
    move v14, v15

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v14

    goto :goto_7

    :cond_1f
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->d()V

    sget-object v4, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    :cond_20
    const/16 v4, 0x7d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->write(I)V

    goto/16 :goto_0

    :cond_21
    move-object v6, v9

    goto/16 :goto_4

    :cond_22
    move-object v11, v5

    goto/16 :goto_3
.end method
