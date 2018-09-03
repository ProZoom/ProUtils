.class public Lcom/sunrise/e/a;
.super Ljava/lang/Object;


# static fields
.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/sunrise/h/a;

.field protected final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sunrise/d/a;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-class v0, Lcom/sunrise/d/e;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sunrise/e/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    instance-of v0, p1, Lcom/sunrise/h/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sunrise/h/a;

    :goto_0
    iput-object p1, p0, Lcom/sunrise/e/a;->a:Lcom/sunrise/h/a;

    return-void

    :cond_0
    new-instance v0, Lcom/sunrise/h/a;

    invoke-direct {v0, p1}, Lcom/sunrise/h/a;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/a;->a:Lcom/sunrise/h/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sunrise/h/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V
    .locals 17

    new-instance v2, Lcom/sunrise/c/g;

    const/4 v4, 0x1

    const-string v5, "deserialzeArrayMapping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->a(Lcom/sunrise/e/b;)Lcom/sunrise/h/h;

    move-result-object v3

    iget-object v10, v3, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    array-length v11, v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_13

    add-int/lit8 v3, v11, -0x1

    if-ne v8, v3, :cond_1

    const/4 v3, 0x1

    move v9, v3

    :goto_1
    if-eqz v9, :cond_2

    const/16 v3, 0x5d

    :goto_2
    aget-object v6, v10, v8

    iget-object v7, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v4, v6, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_0

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_3

    :cond_0
    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanInt"

    const-string v7, "(C)I"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x2c

    goto :goto_2

    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_4

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanLong"

    const-string v7, "(C)J"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_3

    :cond_4
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_5

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanBoolean"

    const-string v7, "(C)Z"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_5
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_6

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanFloat"

    const-string v7, "(C)F"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_6
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_7

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanDouble"

    const-string v7, "(C)D"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_7
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_8

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanString"

    const-string v7, "(C)Ljava/lang/String;"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0xb6

    const-string v4, "java/lang/String"

    const-string v5, "charAt"

    const-string v7, "(I)C"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_8
    const-class v5, Ljava/lang/String;

    if-ne v7, v5, :cond_9

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanString"

    const-string v7, "(C)Ljava/lang/String;"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    new-instance v9, Lcom/sunrise/c/e;

    invoke-direct {v9}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    const/16 v13, 0x19

    const-string v14, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0xb6

    sget-object v14, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v15, "getCurrent"

    const-string v16, "()C"

    move-object/from16 v0, v16

    invoke-interface {v2, v13, v14, v15, v0}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x59

    invoke-interface {v2, v13}, Lcom/sunrise/c/f;->a(I)V

    const/16 v13, 0x36

    const-string v14, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x6e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v13, 0x9f

    invoke-interface {v2, v13, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v13, 0x15

    const-string v14, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v13, v14}, Lcom/sunrise/c/f;->b(II)V

    const/16 v13, 0x22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v13, 0xa0

    invoke-interface {v2, v13, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v12, 0x19

    const-string v13, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v12

    invoke-interface {v2, v12}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v12, 0x19

    const/4 v13, 0x1

    invoke-interface {v2, v12, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xb6

    sget-object v13, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v14, "getSymbolTable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/sunrise/d/k;

    invoke-static/range {v16 .. v16}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v12, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x10

    invoke-interface {v2, v12, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v12, 0xb6

    sget-object v13, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v14, "scanEnum"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(Ljava/lang/Class;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/sunrise/d/k;

    invoke-static/range {v16 .. v16}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "C)Ljava/lang/Enum;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v12, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa7

    invoke-interface {v2, v12, v9}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v4, 0x15

    const-string v12, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v4, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa1

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v4, 0x15

    const-string v12, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v4, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa3

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/sunrise/e/a;->c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    const/16 v4, 0xc0

    const-class v12, Lcom/sunrise/e/h;

    invoke-static {v12}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v4, v12}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v4, 0x19

    const-string v12, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v4, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v12, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v13, "scanInt"

    const-string v14, "(C)I"

    invoke-interface {v2, v4, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb6

    const-class v12, Lcom/sunrise/e/h;

    invoke-static {v12}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "valueOf"

    const-string v14, "(I)Ljava/lang/Enum;"

    invoke-interface {v2, v4, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v9}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scanEnum"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";C)Ljava/lang/Enum;"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v4, v5, v12}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0xc0

    invoke-static {v7}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_a
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v4}, Lcom/sunrise/h/k;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_d

    const-class v4, Ljava/util/List;

    if-eq v7, v4, :cond_b

    const-class v4, Ljava/util/Collections;

    if-eq v7, v4, :cond_b

    const-class v4, Ljava/util/ArrayList;

    if-ne v7, v4, :cond_c

    :cond_b
    const/16 v4, 0xbb

    const-class v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v4, 0x59

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0xb7

    const-class v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "<init>"

    const-string v9, "()V"

    invoke-interface {v2, v4, v5, v7, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/16 v4, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanStringArray"

    const-string v7, "(Ljava/util/Collection;C)V"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb4

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "matchStat"

    const-string v9, "I"

    invoke-interface {v2, v4, v5, v7, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_asm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    goto/16 :goto_3

    :cond_c
    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb8

    const-class v5, Lcom/sunrise/h/k;

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "createCollection"

    const-string v9, "(Ljava/lang/Class;)Ljava/util/Collection;"

    invoke-interface {v2, v4, v5, v7, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    const/16 v3, 0x19

    const-string v9, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v9, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v12, "token"

    const-string v13, "()I"

    invoke-interface {v2, v3, v9, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    const-string v9, "token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x15

    const-string v9, "token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    if-nez v8, :cond_e

    const/16 v3, 0xe

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const/4 v9, 0x1

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x15

    const-string v9, "token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v9, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v12, "throwException"

    const-string v13, "(I)V"

    invoke-interface {v2, v3, v9, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    const/16 v9, 0x19

    const-string v12, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v9, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xb6

    sget-object v12, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v13, "getCurrent"

    const-string v14, "()C"

    invoke-interface {v2, v9, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x10

    const/16 v12, 0x5b

    invoke-interface {v2, v9, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xa0

    invoke-interface {v2, v9, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v9, 0x19

    const-string v12, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v9, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xb6

    sget-object v12, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v13, "next"

    const-string v14, "()C"

    invoke-interface {v2, v9, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x57

    invoke-interface {v2, v9}, Lcom/sunrise/c/f;->a(I)V

    const/16 v9, 0x19

    const-string v12, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v9, v12}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v9, 0xb6

    sget-object v12, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v13, "setToken"

    const-string v14, "(I)V"

    invoke-interface {v2, v9, v12, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    invoke-interface {v2, v9, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v9, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v3, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v9, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v12, "nextToken"

    const-string v13, "(I)V"

    invoke-interface {v2, v3, v9, v12, v13}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v8, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Ljava/lang/Class;IZ)V

    const/16 v3, 0x59

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V

    const/16 v3, 0x19

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb8

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parseArray"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Ljava/util/Collection;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/sunrise/e/s;

    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const/16 v3, 0x10

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "nextToken"

    const-string v9, "(I)V"

    invoke-interface {v2, v3, v4, v5, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getFieldType"

    const-string v9, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v2, v3, v4, v5, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "parseObject"

    const-string v9, "(Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-interface {v2, v3, v4, v5, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc0

    invoke-static {v7}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_3

    :cond_10
    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    const-class v5, Ljava/util/Date;

    if-ne v7, v5, :cond_11

    const/16 v5, 0x19

    const-string v13, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v5, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v13, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v14, "getCurrent"

    const-string v15, "()C"

    invoke-interface {v2, v5, v13, v14, v15}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xa0

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v5, 0xbb

    const-class v13, Ljava/util/Date;

    invoke-static {v13}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v5, v13}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v5, 0x59

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x19

    const-string v13, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v5, v13}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x10

    invoke-interface {v2, v5, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v13, "scanLong"

    const-string v14, "(C)J"

    invoke-interface {v2, v3, v5, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb7

    const-class v5, Ljava/util/Date;

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "<init>"

    const-string v14, "(J)V"

    invoke-interface {v2, v3, v5, v13, v14}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "_asm"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xa7

    invoke-interface {v2, v3, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_11
    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;I)V

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;I)V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    if-nez v9, :cond_12

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    :goto_6
    const/16 v3, 0xb7

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "check"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/sunrise/d/d;

    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "I)V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    goto/16 :goto_3

    :cond_12
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Z)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    new-instance v5, Lcom/sunrise/c/e;

    invoke-direct {v5}, Lcom/sunrise/c/e;-><init>()V

    new-instance v6, Lcom/sunrise/c/e;

    invoke-direct {v6}, Lcom/sunrise/c/e;-><init>()V

    const/16 v7, 0x19

    const-string v8, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v7, v8}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    sget-object v8, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v9, "getCurrent"

    const-string v10, "()C"

    invoke-interface {v2, v7, v8, v9, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x59

    invoke-interface {v2, v7}, Lcom/sunrise/c/f;->a(I)V

    const/16 v7, 0x36

    const-string v8, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v7, v8}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x10

    const/16 v8, 0x2c

    invoke-interface {v2, v7, v8}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xa0

    invoke-interface {v2, v7, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v7, 0x19

    const-string v8, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v7, v8}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0xb6

    sget-object v8, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v9, "next"

    const-string v10, "()C"

    invoke-interface {v2, v7, v8, v9, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x57

    invoke-interface {v2, v7}, Lcom/sunrise/c/f;->a(I)V

    const/16 v7, 0x19

    const-string v8, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v7, v8}, Lcom/sunrise/c/f;->b(II)V

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v7, 0xb6

    sget-object v8, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v9, "setToken"

    const-string v10, "(I)V"

    invoke-interface {v2, v7, v8, v9, v10}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa7

    invoke-interface {v2, v7, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v4, 0x15

    const-string v7, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v4, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    const/16 v7, 0x5d

    invoke-interface {v2, v4, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xa0

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v4, 0x19

    const-string v7, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v4, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v7, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "next"

    const-string v9, "()C"

    invoke-interface {v2, v4, v7, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x57

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0x19

    const-string v7, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v4, v7}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    sget-object v7, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "setToken"

    const-string v9, "(I)V"

    invoke-interface {v2, v4, v7, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v4, 0x15

    const-string v5, "ch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xa0

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "next"

    const-string v8, "()C"

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x57

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "setToken"

    const-string v8, "(I)V"

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "nextToken"

    const-string v7, "(I)V"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb0

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/4 v3, 0x5

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->b(Lcom/sunrise/e/b;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v2}, Lcom/sunrise/c/f;->a()V

    return-void
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_asm_flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p2, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v1, 0x80

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x36

    invoke-virtual {p2, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/sunrise/c/f;->b(II)V

    return-void
.end method

.method private a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;ILcom/sunrise/c/e;)V
    .locals 3

    const/16 v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_asm_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p3, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    shl-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0x7e

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(I)V

    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    return-void
.end method

.method private a(Lcom/sunrise/c/f;Ljava/lang/Class;IZ)V
    .locals 4

    const/16 v2, 0xbb

    const/16 v3, 0xb7

    const/16 v1, 0x59

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const-string v0, "java/util/ArrayList"

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-string v0, "java/util/ArrayList"

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0xc0

    invoke-static {p2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    const-class v0, Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-class v0, Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p4, :cond_5

    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sunrise/c/f;->a(I)V

    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    const-class v1, Lcom/sunrise/e/n;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldType"

    const-string v3, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb8

    const-class v1, Lcom/sunrise/h/k;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createCollection"

    const-string v3, "(Ljava/lang/reflect/Type;)Ljava/util/Collection;"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V
    .locals 4

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb4

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "lexer"

    const-class v3, Lcom/sunrise/d/d;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v0, 0x3a

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    return-void
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;I)V
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0xb6

    const/16 v5, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    const-string v2, "lexer"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v5, v2}, Lcom/sunrise/c/f;->b(II)V

    sget-object v2, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v3, "getCurrent"

    const-string v4, "()C"

    invoke-interface {p2, v6, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    if-ne p3, v2, :cond_0

    const/16 v2, 0x7b

    invoke-interface {p2, v7, v2}, Lcom/sunrise/c/f;->b(II)V

    :goto_0
    const/16 v2, 0xa0

    invoke-interface {p2, v2, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v2, "lexer"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v5, v2}, Lcom/sunrise/c/f;->b(II)V

    sget-object v2, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v3, "next"

    const-string v4, "()C"

    invoke-interface {p2, v6, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(I)V

    const-string v2, "lexer"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v5, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v2, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v3, "setToken"

    const-string v4, "(I)V"

    invoke-interface {p2, v6, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa7

    invoke-interface {p2, v2, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v0, "lexer"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v2, "nextToken"

    const-string v3, "(I)V"

    invoke-interface {p2, v6, v0, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_0
    const/16 v2, 0xe

    if-ne p3, v2, :cond_1

    const/16 v2, 0x5b

    invoke-interface {p2, v7, v2}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;)V
    .locals 4

    const/16 v0, 0x15

    const-string v1, "matchedCount"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->a(II)V

    const/16 v0, 0x9e

    invoke-interface {p2, v0, p3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v2, "token"

    const-string v3, "()I"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    invoke-interface {p2, v0, p3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2}, Lcom/sunrise/e/a;->e(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    return-void
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;Lcom/sunrise/h/c;Ljava/lang/Class;I)V
    .locals 7

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v6, Lcom/sunrise/c/e;

    invoke-direct {v6}, Lcom/sunrise/c/e;-><init>()V

    const/16 v1, 0x19

    const-string v2, "lexer"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb4

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_prefix__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[C"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb6

    sget-object v2, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v3, "matchField"

    const-string v4, "([C)Z"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9a

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xa7

    invoke-interface {p2, v1, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-direct {p0, p2, p1, p6}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;I)V

    const/16 v0, 0x15

    const-string v1, "matchedCount"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    const/16 v0, 0x60

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    const/16 v0, 0x36

    const-string v1, "matchedCount"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;I)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "getResolveStatus"

    const-string v3, "()I"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    invoke-interface {p2, v0, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "getLastResolveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/d/b;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const-string v1, "resolveTask"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const-string v1, "resolveTask"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "getContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/d/i;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb5

    const-class v1, Lcom/sunrise/d/b;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ownerContext"

    const-class v3, Lcom/sunrise/d/i;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    const-string v1, "resolveTask"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    const-class v1, Lcom/sunrise/e/n;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/String;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/e/l;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb5

    const-class v1, Lcom/sunrise/d/b;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fieldDeserializer"

    const-class v3, Lcom/sunrise/e/l;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "setResolveStatus"

    const-string v3, "(I)V"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;Lcom/sunrise/h/c;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 10

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v4, "matchField"

    const-string v5, "([C)Z"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x99

    invoke-interface {p2, v2, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move/from16 v0, p7

    invoke-direct {p0, p2, p1, v0}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;I)V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    const/16 v3, 0x19

    const-string v4, "lexer"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "token"

    const-string v6, "()I"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    invoke-interface {p2, v3, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "nextToken"

    const-string v6, "(I)V"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/16 v4, 0x19

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "token"

    const-string v7, "()I"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    invoke-interface {p2, v4, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "nextToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "token"

    const-string v7, "()I"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    invoke-interface {p2, v4, p3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v4, 0x1

    move/from16 v0, p7

    invoke-direct {p0, p2, p5, v0, v4}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Ljava/lang/Class;IZ)V

    const/16 v4, 0xa7

    invoke-interface {p2, v4, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "token"

    const-string v6, "()I"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    invoke-interface {p2, v3, p3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {p0, p2, p5, v0, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Ljava/lang/Class;IZ)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    iget-object v2, p4, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v2}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;)Z

    move-result v2

    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V

    if-eqz v2, :cond_0

    const/16 v3, 0xb9

    const-class v4, Lcom/sunrise/e/s;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getFastMatchToken"

    const-string v6, "()I"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    const-string v4, "fastMatchToken"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x15

    const-string v4, "fastMatchToken"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "nextToken"

    const-string v6, "(I)V"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "getContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/sunrise/d/i;

    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    const-string v4, "listContext"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_asm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    iget-object v3, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "setContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/sunrise/d/i;

    invoke-static {v7}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(I)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x36

    const-string v6, "i"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v5, 0x19

    const-string v6, "lexer"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "token"

    const-string v8, "()I"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0x9f

    invoke-interface {p2, v5, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb4

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm_list_item_deser__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/sunrise/e/s;

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p6 .. p6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0x15

    const-string v6, "i"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb8

    const-string v6, "java/lang/Integer"

    const-string v7, "valueOf"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb9

    const-class v6, Lcom/sunrise/e/s;

    invoke-static {v6}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "deserialze"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    const-string v6, "list_item_value"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const-string v5, "i"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->c(II)V

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_asm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const-string v6, "list_item_value"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-virtual {p5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xb9

    invoke-static {p5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "add"

    const-string v8, "(Ljava/lang/Object;)Z"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v5, 0x57

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_asm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v7, "checkListResolve"

    const-string v8, "(Ljava/util/Collection;)V"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x19

    const-string v6, "lexer"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v6, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "token"

    const-string v8, "()I"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v5, 0xa0

    invoke-interface {p2, v5, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    if-eqz v2, :cond_2

    const/16 v2, 0x19

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v2, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x15

    const-string v5, "fastMatchToken"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v2, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "nextToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v2, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v2, 0xa7

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0x19

    const-string v3, "listContext"

    invoke-virtual {p1, v3}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v4, "setContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/sunrise/d/i;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    const-string v3, "lexer"

    invoke-virtual {p1, v3}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xb6

    sget-object v3, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v4, "token"

    const-string v5, "()I"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    invoke-interface {p2, v2, p3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-direct {p0, p1, p2}, Lcom/sunrise/e/a;->e(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_0
    const/16 v3, 0x57

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x36

    const-string v4, "fastMatchToken"

    invoke-virtual {p1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xc

    invoke-direct {p0, p1, p2, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;I)V

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xb6

    invoke-static {p5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "add"

    const-string v8, "(Ljava/lang/Object;)Z"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0xc

    invoke-direct {p0, p1, p2, v2}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;I)V

    goto/16 :goto_2
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V
    .locals 6

    const/16 v5, 0x15

    const/4 v4, 0x2

    const/16 v3, 0x19

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v1, p3, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    :cond_2
    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    const/16 v0, 0xb6

    invoke-virtual {p1}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x57

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb5

    iget-object v1, p3, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0

    :cond_7
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_8

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0

    :cond_9
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "instance"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v3, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v1}, Lcom/sunrise/h/k;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xc0

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_1

    :cond_b
    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;)V
    .locals 9

    const/16 v8, 0xb6

    const/16 v7, 0xb4

    const/4 v6, 0x0

    const/16 v5, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_list_item_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sunrise/e/s;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "getConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/d/j;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const-class v1, Lcom/sunrise/d/j;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/reflect/Type;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/e/s;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_list_item_deser__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sunrise/e/s;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_list_item_deser__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sunrise/e/s;

    invoke-static {v2}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v7, v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;Ljava/lang/Class;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/e/a;->c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    iget v2, p3, Lcom/sunrise/h/c;->i:I

    sget-object v3, Lcom/sunrise/d/c;->n:Lcom/sunrise/d/c;

    iget v3, v3, Lcom/sunrise/d/c;->r:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/16 v2, 0x59

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(I)V

    const/16 v2, 0xc1

    const-class v3, Lcom/sunrise/e/n;

    invoke-static {v3}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v2, 0x99

    invoke-interface {p2, v2, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v2, 0xc0

    const-class v3, Lcom/sunrise/e/n;

    invoke-static {v3}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    iget-object v2, p3, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v2}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    iget v2, p3, Lcom/sunrise/h/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    const-class v3, Lcom/sunrise/e/n;

    invoke-static {v3}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deserialze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc0

    invoke-static {p4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v2, 0xa7

    invoke-interface {p2, v2, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_0
    const/16 v0, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->b(II)V

    iget-object v0, p3, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb9

    const-class v2, Lcom/sunrise/e/s;

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    invoke-static {p4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v0, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void

    :cond_1
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    const-class v3, Lcom/sunrise/e/n;

    invoke-static {v3}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFieldType"

    const-string v5, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    const-class v2, Lcom/sunrise/e/n;

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFieldType"

    const-string v4, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v1

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_2

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;ILcom/sunrise/c/e;)V

    :cond_0
    invoke-static {p1}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-direct {p0, p1, p2, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V

    if-eqz p3, :cond_1

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V
    .locals 18

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    iget-object v6, v2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v2, v2, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_0

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->a(Lcom/sunrise/e/b;)Lcom/sunrise/h/h;

    move-result-object v9

    iget-object v2, v9, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sunrise/e/b;->a(Lcom/sunrise/e/b;[Lcom/sunrise/h/c;)[Lcom/sunrise/h/c;

    new-instance v2, Lcom/sunrise/c/g;

    const/4 v4, 0x1

    const-string v5, "deserialze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v6, Lcom/sunrise/c/e;

    invoke-direct {v6}, Lcom/sunrise/c/e;-><init>()V

    new-instance v11, Lcom/sunrise/c/e;

    invoke-direct {v11}, Lcom/sunrise/c/e;-><init>()V

    new-instance v12, Lcom/sunrise/c/e;

    invoke-direct {v12}, Lcom/sunrise/c/e;-><init>()V

    new-instance v13, Lcom/sunrise/c/e;

    invoke-direct {v13}, Lcom/sunrise/c/e;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "token"

    const-string v8, "()I"

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    iget v4, v9, Lcom/sunrise/h/h;->j:I

    sget-object v5, Lcom/sunrise/d/c;->n:Lcom/sunrise/d/c;

    iget v5, v5, Lcom/sunrise/d/c;->r:I

    and-int/2addr v4, v5

    if-nez v4, :cond_4

    const/16 v4, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x15

    const/4 v5, 0x4

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    sget-object v4, Lcom/sunrise/d/c;->n:Lcom/sunrise/d/c;

    iget v4, v4, Lcom/sunrise/d/c;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "isEnabled"

    const-string v8, "(II)Z"

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    invoke-interface {v2, v4, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_4
    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v4, 0x19

    const/4 v5, 0x3

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0xb7

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "deserialzeArrayMapping"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb0

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    sget-object v3, Lcom/sunrise/d/c;->j:Lcom/sunrise/d/c;

    iget v3, v3, Lcom/sunrise/d/c;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "isEnabled"

    const-string v7, "(I)Z"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x99

    invoke-interface {v2, v3, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->e(Lcom/sunrise/e/b;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "scanType"

    const-string v7, "(Ljava/lang/String;)I"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    invoke-interface {v2, v3, v11}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "getContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/sunrise/d/i;

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    const-string v4, "mark_context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x36

    const-string v4, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "getContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/sunrise/d/i;

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    const-string v4, "context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "context"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v5, "setContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/sunrise/d/i;

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/sunrise/d/i;

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    const-string v4, "childContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "matchStat"

    const-string v7, "I"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    invoke-interface {v2, v3, v12}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x36

    const-string v4, "matchStat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(II)V

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    array-length v14, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v14, :cond_5

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(I)V

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_asm_flag_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v7, v3, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sunrise/c/f;->b(II)V

    add-int/lit8 v3, v3, 0x20

    goto :goto_2

    :cond_5
    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    sget-object v3, Lcom/sunrise/d/c;->m:Lcom/sunrise/d/c;

    iget v3, v3, Lcom/sunrise/d/c;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "isEnabled"

    const-string v7, "(I)Z"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    const-string v4, "initStringFieldAsEmpty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(II)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v14, :cond_c

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v7, :cond_6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v5, v7, :cond_6

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v5, v7, :cond_6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_7

    :cond_6
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x36

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->b(II)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_8

    const/16 v5, 0x9

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x37

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_4

    :cond_8
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_9

    const/16 v5, 0xb

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x38

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_4

    :cond_9
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_a

    const/16 v5, 0xe

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x39

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_4

    :cond_a
    const-class v7, Ljava/lang/String;

    if-ne v5, v7, :cond_b

    new-instance v7, Lcom/sunrise/c/e;

    invoke-direct {v7}, Lcom/sunrise/c/e;-><init>()V

    new-instance v8, Lcom/sunrise/c/e;

    invoke-direct {v8}, Lcom/sunrise/c/e;-><init>()V

    const/16 v9, 0x15

    const-string v10, "initStringFieldAsEmpty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0x99

    invoke-interface {v2, v9, v8}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v3}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;I)V

    const/16 v9, 0x19

    const-string v10, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v9, v10}, Lcom/sunrise/c/f;->b(II)V

    const/16 v9, 0xb6

    sget-object v10, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v15, "stringDefaultValue"

    const-string v16, "()Ljava/lang/String;"

    move-object/from16 v0, v16

    invoke-interface {v2, v9, v10, v15, v0}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    invoke-interface {v2, v9, v7}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v8}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v2, v7}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    :goto_5
    const/16 v7, 0xc0

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v5, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_4

    :cond_b
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/sunrise/c/f;->a(I)V

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v14, :cond_19

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    aget-object v7, v3, v10

    iget-object v8, v7, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v3, v7, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_e

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldBoolean"

    const-string v9, "([C)Z"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    :goto_7
    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "matchStat"

    const-string v8, "I"

    invoke-interface {v2, v3, v5, v7, v8}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/16 v5, 0x9e

    invoke-interface {v2, v5, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v10}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/f;Lcom/sunrise/e/b;I)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "matchStat"

    const-string v8, "I"

    invoke-interface {v2, v3, v5, v7, v8}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x59

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x36

    const-string v5, "matchStat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    invoke-interface {v2, v3, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "matchStat"

    const-string v8, "I"

    invoke-interface {v2, v3, v5, v7, v8}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9e

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v3, 0x15

    const-string v5, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x60

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/16 v3, 0x36

    const-string v5, "matchedCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v7, "matchStat"

    const-string v8, "I"

    invoke-interface {v2, v3, v5, v7, v8}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    invoke-interface {v2, v3, v13}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {v2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    add-int/lit8 v3, v14, -0x1

    if-ne v10, v3, :cond_d

    const/16 v3, 0x19

    const-string v4, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    sget-object v4, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "matchStat"

    const-string v7, "I"

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    invoke-interface {v2, v3, v6}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    :cond_d
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_e
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_f

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldInt"

    const-string v9, "([C)I"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_f
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_10

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldInt"

    const-string v9, "([C)I"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_10
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_11

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldInt"

    const-string v9, "([C)I"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_11
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_12

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldLong"

    const-string v9, "([C)J"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_12
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_13

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldFloat"

    const-string v9, "([C)F"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_13
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_14

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldDouble"

    const-string v9, "([C)D"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_14
    const-class v5, Ljava/lang/String;

    if-ne v8, v5, :cond_15

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_asm_prefix__"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[C"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldString"

    const-string v9, "([C)Ljava/lang/String;"

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v3, 0x19

    const-string v5, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "_asm_prefix__"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, "[C"

    invoke-interface {v2, v3, v5, v9, v15}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0xc0

    invoke-static {v8}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v5, 0x3a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "_asm"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const/4 v9, 0x1

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    sget-object v9, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v15, "getSymbolTable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Lcom/sunrise/d/k;

    invoke-static/range {v17 .. v17}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v5, v9, v15, v0}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb6

    sget-object v9, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v15, "scanFieldSymbol"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "([C"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Lcom/sunrise/d/k;

    invoke-static/range {v17 .. v17}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")Ljava/lang/String;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v5, v9, v15, v0}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x59

    invoke-interface {v2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x3a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "_asm_enumName"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xc6

    invoke-interface {v2, v5, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v5, 0x19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "_asm_enumName"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb6

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "length"

    const-string v16, "()I"

    move-object/from16 v0, v16

    invoke-interface {v2, v5, v9, v15, v0}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x99

    invoke-interface {v2, v5, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const/16 v5, 0x19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "_asm_enumName"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb8

    invoke-static {v8}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "valueOf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(Ljava/lang/String;)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v9, v15, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_asm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v5, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    goto/16 :goto_7

    :cond_16
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v5, 0x19

    const-string v9, "lexer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x19

    const/4 v9, 0x0

    invoke-interface {v2, v5, v9}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0xb4

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_asm_prefix__"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[C"

    move-object/from16 v0, v16

    invoke-interface {v2, v5, v9, v15, v0}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sunrise/h/k;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const-class v3, Ljava/lang/String;

    if-ne v9, v3, :cond_17

    invoke-static {v8}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v8, "scanFieldStringArray"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "([CLjava/lang/Class;)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v15, Ljava/util/Collection;

    invoke-static {v15}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v5, v8, v9}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_asm"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/sunrise/c/f;->b(II)V

    goto/16 :goto_7

    :cond_17
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;Lcom/sunrise/h/c;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v3, v14, -0x1

    if-ne v10, v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;)V

    goto/16 :goto_8

    :cond_18
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;Lcom/sunrise/h/c;Ljava/lang/Class;I)V

    add-int/lit8 v3, v14, -0x1

    if-ne v10, v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/c/e;)V

    goto/16 :goto_8

    :cond_19
    invoke-interface {v2, v13}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->e(Lcom/sunrise/e/b;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->e(Lcom/sunrise/e/b;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    :cond_1a
    invoke-interface {v2, v12}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->d(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    const/16 v3, 0x19

    const-string v4, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->a(Lcom/sunrise/e/b;)Lcom/sunrise/h/h;

    move-result-object v3

    iget-object v3, v3, Lcom/sunrise/h/h;->f:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1b

    const/16 v4, 0xb6

    invoke-virtual/range {p2 .. p2}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v5, v7, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/16 v3, 0xb0

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v2, v6}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sunrise/e/a;->c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const-string v4, "instance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x15

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb6

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parseRest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc0

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->e(Lcom/sunrise/e/b;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v3, 0xb0

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v2, v11}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0x15

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->b(II)V

    const/16 v3, 0xb7

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deserialze"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb0

    invoke-interface {v2, v3}, Lcom/sunrise/c/f;->a(I)V

    const/4 v3, 0x6

    invoke-static/range {p2 .. p2}, Lcom/sunrise/e/b;->b(Lcom/sunrise/e/b;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v2}, Lcom/sunrise/c/f;->a()V

    goto/16 :goto_0
.end method

.method private b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V
    .locals 6

    const/16 v5, 0xb7

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const/16 v2, 0x19

    invoke-static {p1}, Lcom/sunrise/e/b;->a(Lcom/sunrise/e/b;)Lcom/sunrise/h/h;

    move-result-object v0

    iget-object v0, v0, Lcom/sunrise/h/h;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xbb

    invoke-virtual {p1}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p2, v5, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/4 v0, 0x1

    invoke-interface {p2, v2, v0}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v2, v3}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb4

    const-class v1, Lcom/sunrise/e/n;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clazz"

    const-string v3, "Ljava/lang/Class;"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/sunrise/e/n;

    invoke-static {v0}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    invoke-virtual {p1}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const-string v0, "instance"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Lcom/sunrise/c/f;->b(II)V

    goto :goto_0
.end method

.method private b(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V
    .locals 4

    iget-object v0, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/16 v0, 0xb6

    iget-object v1, p3, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x57

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xb5

    iget-object v1, p3, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x19

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v0

    array-length v1, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    aget-object v3, v3, v0

    new-instance v4, Lcom/sunrise/c/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_asm_prefix__"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "[C"

    invoke-direct {v4, p1, v2, v3, v6}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunrise/c/c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v0

    array-length v1, v0

    move v0, v7

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sunrise/c/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_asm_list_item_deser__"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/sunrise/e/s;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v2, v3, v6}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunrise/c/c;->a()V

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/sunrise/c/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_asm_deser__"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/sunrise/e/s;

    invoke-static {v6}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v2, v3, v6}, Lcom/sunrise/c/c;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunrise/c/c;->a()V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/sunrise/c/g;

    const-string v3, "<init>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Lcom/sunrise/d/j;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Lcom/sunrise/h/h;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")V"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v9, v7}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {v0, v9, v2}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x2

    invoke-interface {v0, v9, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb7

    const-class v2, Lcom/sunrise/e/n;

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/sunrise/d/j;

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/sunrise/h/h;

    invoke-static {v5}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v1

    array-length v2, v1

    move v1, v7

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-static {p2}, Lcom/sunrise/e/b;->c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v0, v9, v7}, Lcom/sunrise/c/f;->b(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    const-string v5, "java/lang/String"

    const-string v6, "toCharArray"

    const-string v8, "()[C"

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb5

    invoke-static {p2}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_asm_prefix__"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "[C"

    invoke-interface {v0, v4, v5, v3, v6}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v0, v10, v10}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v0}, Lcom/sunrise/c/f;->a()V

    return-void
.end method

.method private c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sunrise/e/a;->a(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Z)V

    return-void
.end method

.method private c(Lcom/sunrise/e/b;Lcom/sunrise/c/f;Lcom/sunrise/h/c;)V
    .locals 9

    const/16 v8, 0xb6

    const/16 v7, 0xb4

    const/4 v6, 0x0

    const/16 v5, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asm_deser__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sunrise/e/s;

    invoke-static {v3}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v1, v2, v3}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/4 v1, 0x1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "getConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/d/j;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-static {v1}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/c/h;->a(Ljava/lang/String;)Lcom/sunrise/c/h;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    const-class v1, Lcom/sunrise/d/j;

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeserializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/reflect/Type;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/e/s;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_asm_deser__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sunrise/e/s;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {p1}, Lcom/sunrise/e/b;->d(Lcom/sunrise/e/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_asm_deser__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sunrise/e/s;

    invoke-static {v2}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v7, v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x3

    new-instance v0, Lcom/sunrise/c/g;

    const/4 v2, 0x1

    const-string v3, "createInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sunrise/c/g;-><init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xbb

    invoke-virtual {p2}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sunrise/c/f;->a(ILjava/lang/String;)V

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    const/16 v1, 0xb7

    invoke-virtual {p2}, Lcom/sunrise/e/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb0

    invoke-interface {v0, v1}, Lcom/sunrise/c/f;->a(I)V

    invoke-interface {v0, v7, v7}, Lcom/sunrise/c/f;->d(II)V

    invoke-interface {v0}, Lcom/sunrise/c/f;->a()V

    return-void
.end method

.method private d(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V
    .locals 6

    const/16 v5, 0x19

    const/4 v0, 0x1

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const-string v0, "context"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/sunrise/c/f;->b(II)V

    const/16 v0, 0xb6

    sget-object v1, Lcom/sunrise/e/a;->c:Ljava/lang/String;

    const-string v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/sunrise/d/i;

    invoke-static {v4}, Lcom/sunrise/h/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    const-string v1, "childContext"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xc6

    invoke-interface {p2, v1, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v1, "childContext"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const-string v1, "instance"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xb5

    const-class v2, Lcom/sunrise/d/i;

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "object"

    const-string v4, "Ljava/lang/Object;"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sunrise/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method

.method private e(Lcom/sunrise/e/b;Lcom/sunrise/c/f;)V
    .locals 13

    const/16 v12, 0xa7

    const/16 v11, 0xa0

    const/16 v10, 0x10

    const/16 v9, 0xb6

    const/16 v8, 0x19

    new-instance v0, Lcom/sunrise/c/e;

    invoke-direct {v0}, Lcom/sunrise/c/e;-><init>()V

    new-instance v1, Lcom/sunrise/c/e;

    invoke-direct {v1}, Lcom/sunrise/c/e;-><init>()V

    new-instance v2, Lcom/sunrise/c/e;

    invoke-direct {v2}, Lcom/sunrise/c/e;-><init>()V

    new-instance v3, Lcom/sunrise/c/e;

    invoke-direct {v3}, Lcom/sunrise/c/e;-><init>()V

    new-instance v4, Lcom/sunrise/c/e;

    invoke-direct {v4}, Lcom/sunrise/c/e;-><init>()V

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v8, v5}, Lcom/sunrise/c/f;->b(II)V

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "getCurrent"

    const-string v7, "()C"

    invoke-interface {p2, v9, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x59

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(I)V

    const/16 v5, 0x36

    const-string v6, "ch"

    invoke-virtual {p1, v6}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sunrise/c/f;->b(II)V

    const/16 v5, 0x2c

    invoke-interface {p2, v10, v5}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v11, v1}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v8, v5}, Lcom/sunrise/c/f;->b(II)V

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "next"

    const-string v7, "()C"

    invoke-interface {p2, v9, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(I)V

    const-string v5, "lexer"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v8, v5}, Lcom/sunrise/c/f;->b(II)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v5, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v6, "setToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v9, v5, v6, v7}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v12, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v1, 0x15

    const-string v5, "ch"

    invoke-virtual {p1, v5}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x7d

    invoke-interface {p2, v10, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v11, v2}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "next"

    const-string v6, "()C"

    invoke-interface {p2, v9, v1, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x57

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(I)V

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v5, "setToken"

    const-string v6, "(I)V"

    invoke-interface {p2, v9, v1, v5, v6}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v12, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v2}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v1, 0x15

    const-string v2, "ch"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x5d

    invoke-interface {p2, v10, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v11, v3}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/sunrise/c/f;->b(II)V

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v2, "next"

    const-string v5, "()C"

    invoke-interface {p2, v9, v1, v2, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x57

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(I)V

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v2, "setToken"

    const-string v5, "(I)V"

    invoke-interface {p2, v9, v1, v2, v5}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v12, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v3}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const/16 v1, 0x15

    const-string v2, "ch"

    invoke-virtual {p1, v2}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x1a

    invoke-interface {p2, v10, v1}, Lcom/sunrise/c/f;->b(II)V

    invoke-interface {p2, v11, v0}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    const-string v1, "lexer"

    invoke-virtual {p1, v1}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/sunrise/c/f;->b(II)V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sunrise/c/f;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v2, "setToken"

    const-string v3, "(I)V"

    invoke-interface {p2, v9, v1, v2, v3}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v12, v4}, Lcom/sunrise/c/f;->a(ILcom/sunrise/c/e;)V

    invoke-interface {p2, v0}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    const-string v0, "lexer"

    invoke-virtual {p1, v0}, Lcom/sunrise/e/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v8, v0}, Lcom/sunrise/c/f;->b(II)V

    sget-object v0, Lcom/sunrise/e/a;->d:Ljava/lang/String;

    const-string v1, "nextToken"

    const-string v2, "()V"

    invoke-interface {p2, v9, v0, v1, v2}, Lcom/sunrise/c/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/sunrise/c/f;->a(Lcom/sunrise/c/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;)Lcom/sunrise/e/s;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p2, Lcom/sunrise/h/h;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FastjsonASMDeserializer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/e/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sunrise/e/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sunrise/c/b;

    invoke-direct {v0}, Lcom/sunrise/c/b;-><init>()V

    const/16 v1, 0x31

    const/16 v2, 0x21

    const-class v4, Lcom/sunrise/e/n;

    invoke-static {v4}, Lcom/sunrise/h/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/c/b;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/sunrise/e/b;

    invoke-direct {v1, v3, p1, p2, v10}, Lcom/sunrise/e/b;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;Lcom/sunrise/h/h;I)V

    invoke-direct {p0, v0, v1}, Lcom/sunrise/e/a;->c(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V

    new-instance v1, Lcom/sunrise/e/b;

    invoke-direct {v1, v3, p1, p2, v10}, Lcom/sunrise/e/b;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;Lcom/sunrise/h/h;I)V

    invoke-direct {p0, v0, v1}, Lcom/sunrise/e/a;->d(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V

    new-instance v1, Lcom/sunrise/e/b;

    const/4 v2, 0x5

    invoke-direct {v1, v3, p1, p2, v2}, Lcom/sunrise/e/b;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;Lcom/sunrise/h/h;I)V

    invoke-direct {p0, v0, v1}, Lcom/sunrise/e/a;->b(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V

    new-instance v1, Lcom/sunrise/e/b;

    const/4 v2, 0x4

    invoke-direct {v1, v3, p1, p2, v2}, Lcom/sunrise/e/b;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;Lcom/sunrise/h/h;I)V

    invoke-direct {p0, v0, v1}, Lcom/sunrise/e/a;->a(Lcom/sunrise/c/b;Lcom/sunrise/e/b;)V

    invoke-virtual {v0}, Lcom/sunrise/c/b;->a()[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v6, v0, v7, v1}, Lcom/sunrise/e/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Class;

    const-class v2, Lcom/sunrise/d/j;

    aput-object v2, v1, v7

    const-class v2, Lcom/sunrise/h/h;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v7

    aput-object p2, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    return-object v0
.end method
