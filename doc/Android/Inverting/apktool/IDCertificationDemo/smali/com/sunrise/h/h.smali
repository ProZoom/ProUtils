.class public Lcom/sunrise/h/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/reflect/Constructor;

.field public final d:Ljava/lang/reflect/Constructor;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:[Lcom/sunrise/h/c;

.field public final i:[Lcom/sunrise/h/c;

.field public final j:I

.field public final k:Lcom/sunrise/b/d;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/sunrise/b/d;Ljava/util/List;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/h/h;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunrise/h/h;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sunrise/h/h;->c:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Lcom/sunrise/h/h;->d:Ljava/lang/reflect/Constructor;

    iput-object p5, p0, Lcom/sunrise/h/h;->e:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/sunrise/h/k;->b(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/h/h;->j:I

    iput-object p6, p0, Lcom/sunrise/h/h;->f:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lcom/sunrise/h/h;->k:Lcom/sunrise/b/d;

    if-eqz p7, :cond_2

    invoke-interface {p7}, Lcom/sunrise/b/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/sunrise/h/h;->l:Ljava/lang/String;

    :goto_0
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sunrise/h/c;

    iput-object v0, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    iget-object v0, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    invoke-interface {p8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v0, v0

    new-array v0, v0, [Lcom/sunrise/h/c;

    iget-object v2, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    iget-object v3, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    :cond_0
    iput-object v0, p0, Lcom/sunrise/h/h;->i:[Lcom/sunrise/h/c;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    :goto_1
    iput v0, p0, Lcom/sunrise/h/h;->g:I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/h/h;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/h/h;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/sunrise/h/c;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/h/c;

    iget-object v2, v0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/sunrise/a/k;)Lcom/sunrise/h/h;
    .locals 25

    const-class v2, Lcom/sunrise/b/d;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/sunrise/b/d;

    invoke-static {v14}, Lcom/sunrise/h/h;->a(Lcom/sunrise/b/d;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    if-nez v15, :cond_1

    move-object/from16 v2, p0

    :goto_0
    invoke-static {v2}, Lcom/sunrise/h/h;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v21

    const/16 v17, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    if-nez v21, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/sunrise/h/h;->b(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-static {v12}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v2, v13

    if-lez v2, :cond_4

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    array-length v2, v13

    if-ge v11, v2, :cond_4

    aget-object v5, v16, v11

    const/4 v3, 0x0

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    instance-of v7, v2, Lcom/sunrise/b/b;

    if-eqz v7, :cond_2

    check-cast v2, Lcom/sunrise/b/b;

    move-object v3, v2

    :cond_0
    if-nez v3, :cond_3

    new-instance v2, Lcom/sunrise/a/d;

    const-string v3, "illegal json creator"

    invoke-direct {v2, v3}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v15

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_3
    aget-object v5, v13, v11

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v6, v2, v11

    invoke-interface {v3}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-interface {v3}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v3}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v3}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    new-instance v2, Lcom/sunrise/h/c;

    invoke-interface {v3}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/sunrise/h/h;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v15

    move-object v6, v12

    move-object v9, v14

    move-object/from16 v10, v22

    invoke-direct/range {v2 .. v10}, Lcom/sunrise/h/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/sunrise/b/d;Ljava/util/List;)V

    :goto_3
    return-object v2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sunrise/h/h;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v2, v13

    if-lez v2, :cond_9

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    const/4 v2, 0x0

    move v11, v2

    :goto_4
    array-length v2, v13

    if-ge v11, v2, :cond_9

    aget-object v5, v16, v11

    const/4 v3, 0x0

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_5
    if-ge v4, v6, :cond_6

    aget-object v2, v5, v4

    instance-of v7, v2, Lcom/sunrise/b/b;

    if-eqz v7, :cond_7

    check-cast v2, Lcom/sunrise/b/b;

    move-object v3, v2

    :cond_6
    if-nez v3, :cond_8

    new-instance v2, Lcom/sunrise/a/d;

    const-string v3, "illegal json creator"

    invoke-direct {v2, v3}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    :cond_8
    aget-object v5, v13, v11

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v6, v2, v11

    invoke-interface {v3}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-interface {v3}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v3}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v3}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    new-instance v2, Lcom/sunrise/h/c;

    invoke-interface {v3}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/sunrise/h/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v15

    move-object v7, v12

    move-object v9, v14

    move-object/from16 v10, v22

    invoke-direct/range {v2 .. v10}, Lcom/sunrise/h/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/sunrise/b/d;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_a
    new-instance v2, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default constructor not found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-eqz v21, :cond_c

    invoke-static/range {v21 .. v21}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    :cond_c
    if-eqz v15, :cond_36

    const/4 v3, 0x0

    const-class v2, Lcom/sunrise/b/c;

    invoke-virtual {v15, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/c;

    if-eqz v2, :cond_39

    invoke-interface {v2}, Lcom/sunrise/b/c;->b()Ljava/lang/String;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_38

    :cond_d
    const-string v2, "with"

    move-object/from16 v16, v2

    :goto_7
    invoke-virtual {v15}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    aget-object v4, v23, v18

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_9
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/b;

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/sunrise/b/b;

    move-result-object v11

    :goto_a
    if-eqz v11, :cond_10

    invoke-interface {v11}, Lcom/sunrise/b/b;->e()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v11}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v11}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v11}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sunrise/h/c;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sunrise/h/c;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto/16 :goto_9

    :cond_11
    if-eqz v15, :cond_36

    const-class v2, Lcom/sunrise/b/c;

    invoke-virtual {v15, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-interface {v2}, Lcom/sunrise/b/c;->a()Ljava/lang/String;

    move-result-object v2

    :goto_b
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    const-string v2, "build"

    :cond_13
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v15, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    move-object/from16 v2, v17

    :goto_c
    if-nez v2, :cond_14

    :try_start_1
    const-string v3, "create"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :cond_14
    :goto_d
    if-nez v2, :cond_15

    new-instance v2, Lcom/sunrise/a/d;

    const-string v3, "buildMethod not found."

    invoke-direct {v2, v3}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    move-object/from16 v2, v17

    goto :goto_c

    :catch_1
    move-exception v2

    move-object/from16 v2, v17

    goto :goto_c

    :cond_15
    invoke-static {v2}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v16, v2

    :goto_e
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_21

    aget-object v4, v20, v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_17

    :cond_16
    :goto_10
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_f

    :cond_17
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_18
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v2, v6

    const/4 v5, 0x1

    if-ne v2, v5, :cond_16

    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/b;

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/sunrise/b/b;

    move-result-object v11

    :goto_11
    if-eqz v11, :cond_19

    invoke-interface {v11}, Lcom/sunrise/b/b;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v11}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v11}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v11}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sunrise/h/c;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto :goto_10

    :cond_19
    const-string v2, "set"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_1a

    const/16 v5, 0x200

    if-le v2, v5, :cond_1d

    :cond_1a
    sget-boolean v2, Lcom/sunrise/h/k;->a:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_1b

    const/4 v3, 0x0

    aget-object v3, v6, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    :cond_1b
    const/4 v12, 0x0

    if-eqz v5, :cond_20

    const-class v3, Lcom/sunrise/b/b;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/sunrise/b/b;

    if-eqz v12, :cond_20

    invoke-interface {v12}, Lcom/sunrise/b/b;->e()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v12}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v12}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v12}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v12}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v12}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sunrise/h/c;

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto/16 :goto_10

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1d
    const/16 v5, 0x5f

    if-ne v2, v5, :cond_1e

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1e
    const/16 v5, 0x66

    if-ne v2, v5, :cond_1f

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_16

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_20
    if-eqz p2, :cond_33

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_13
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto/16 :goto_10

    :cond_21
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_14
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a

    aget-object v5, v18, v17

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_23

    :cond_22
    :goto_15
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_14

    :cond_23
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_25

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_24

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_24

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_24
    const/4 v2, 0x1

    :goto_16
    if-eqz v2, :cond_22

    :cond_25
    const/4 v3, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_17
    if-nez v2, :cond_22

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/sunrise/b/b;

    if-eqz v12, :cond_27

    invoke-interface {v12}, Lcom/sunrise/b/b;->e()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v12}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v12}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v12}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v12}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v12}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    :cond_27
    if-eqz p2, :cond_28

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_28
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto/16 :goto_15

    :cond_29
    const/4 v2, 0x0

    goto :goto_16

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_18
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_30

    aget-object v4, v18, v17

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_2c

    :cond_2b
    :goto_19
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_18

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2b

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-class v3, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v3, v5, :cond_2d

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v3, v5, :cond_2d

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-ne v3, v5, :cond_2b

    :cond_2d
    const-class v3, Lcom/sunrise/b/b;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/sunrise/b/b;

    if-eqz v11, :cond_2e

    invoke-interface {v11}, Lcom/sunrise/b/b;->e()Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_2e
    if-eqz v11, :cond_2f

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    :goto_1a
    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/sunrise/h/c;

    move-result-object v3

    if-nez v3, :cond_2b

    if-eqz p2, :cond_31

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/sunrise/h/h;->a(Ljava/util/List;Lcom/sunrise/h/c;)Z

    goto/16 :goto_19

    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_30
    new-instance v2, Lcom/sunrise/h/h;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v4, v15

    move-object/from16 v5, v21

    move-object/from16 v8, v16

    move-object v9, v14

    move-object/from16 v10, v22

    invoke-direct/range {v2 .. v10}, Lcom/sunrise/h/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/sunrise/b/d;Ljava/util/List;)V

    goto/16 :goto_3

    :catch_2
    move-exception v3

    goto/16 :goto_d

    :catch_3
    move-exception v3

    goto/16 :goto_d

    :cond_31
    move-object v3, v2

    goto :goto_1b

    :cond_32
    move v2, v3

    goto/16 :goto_17

    :cond_33
    move-object v3, v2

    goto/16 :goto_13

    :cond_34
    move-object v11, v2

    goto/16 :goto_11

    :cond_35
    move-object v2, v3

    goto/16 :goto_b

    :cond_36
    move-object/from16 v16, v17

    goto/16 :goto_e

    :cond_37
    move-object v11, v2

    goto/16 :goto_a

    :cond_38
    move-object/from16 v16, v2

    goto/16 :goto_7

    :cond_39
    move-object v2, v3

    goto/16 :goto_6
.end method

.method public static a(Lcom/sunrise/b/d;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/sunrise/b/d;->i()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v1, v4, v2

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_3

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    array-length v5, v4

    move v2, v3

    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    aget-object v6, v6, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v1, 0x0

    array-length v4, p1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-class v0, Lcom/sunrise/b/a;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sunrise/b/a;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static a(Ljava/util/List;Lcom/sunrise/h/c;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/h/c;

    iget-object v2, v0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/sunrise/h/c;->g:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/sunrise/h/c;->g:Z

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v3, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/sunrise/h/c;->a(Lcom/sunrise/h/c;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    const-class v0, Lcom/sunrise/b/a;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sunrise/b/a;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
