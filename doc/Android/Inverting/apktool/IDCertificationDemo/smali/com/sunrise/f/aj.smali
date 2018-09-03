.class public final Lcom/sunrise/f/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/aj;

    invoke-direct {v0}, Lcom/sunrise/f/aj;-><init>()V

    sput-object v0, Lcom/sunrise/f/aj;->a:Lcom/sunrise/f/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    sget-object v5, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v4, v5}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    move-object/from16 v19, v0

    const/4 v10, 0x0

    if-eqz v18, :cond_0

    move-object/from16 v0, p4

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface/range {p4 .. p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v10, v4, v5

    :cond_0
    if-nez p2, :cond_1

    sget-object v4, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v4, p2

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v6}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    :try_start_0
    sget-object v6, Lcom/sunrise/f/ba;->n:Lcom/sunrise/f/ba;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x5b

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->c()V

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v12, v6

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    if-eqz v12, :cond_3

    const/16 v4, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    if-eqz v14, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v15

    new-instance v4, Lcom/sunrise/f/au;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/sunrise/f/au;-><init>(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-interface/range {v6 .. v11}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v4

    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v4}, Lcom/sunrise/f/az;->b()V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->d()V

    invoke-virtual/range {p1 .. p1}, Lcom/sunrise/f/af;->e()V

    const/16 v4, 0x5d

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x5b

    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v17, v6

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v17, :cond_8

    const/16 v6, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :cond_8
    if-nez v8, :cond_9

    const-string v6, "null"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    :goto_4
    add-int/lit8 v6, v17, 0x1

    move/from16 v17, v6

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_a

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->b(I)V

    goto :goto_4

    :cond_a
    const-class v7, Ljava/lang/Long;

    if-ne v6, v7, :cond_c

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-eqz v18, :cond_b

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/f/az;->a(J)V

    const/16 v6, 0x4c

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lcom/sunrise/f/az;->a(J)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/sunrise/f/az;->g:Z

    if-nez v6, :cond_d

    new-instance v11, Lcom/sunrise/f/au;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/sunrise/f/au;-><init>(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sunrise/f/af;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v6 .. v11}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_4

    :cond_f
    const/16 v4, 0x5d

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto/16 :goto_0
.end method
