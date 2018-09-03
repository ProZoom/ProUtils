.class public Lcom/sunrise/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Field;

.field public final d:Ljava/lang/Class;

.field public final e:Ljava/lang/reflect/Type;

.field public final f:Ljava/lang/Class;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Z

.field public final m:[C

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/lang/String;

.field private q:I

.field private final r:Lcom/sunrise/b/b;

.field private final s:Lcom/sunrise/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sunrise/h/c;->q:I

    iput-object p1, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iput-object p4, p0, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    iput-object v3, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/sunrise/h/c;->q:I

    iput p7, p0, Lcom/sunrise/h/c;->h:I

    iput v1, p0, Lcom/sunrise/h/c;->i:I

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunrise/h/c;->n:Z

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sunrise/h/c;->k:Z

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunrise/h/c;->l:Z

    :goto_1
    invoke-virtual {p0}, Lcom/sunrise/h/c;->a()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/h/c;->m:[C

    if-eqz p5, :cond_1

    invoke-static {p5}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/h/c;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/sunrise/h/c;->r:Lcom/sunrise/b/b;

    iput-object v3, p0, Lcom/sunrise/h/c;->s:Lcom/sunrise/b/b;

    iput-boolean v1, p0, Lcom/sunrise/h/c;->g:Z

    iput-boolean v1, p0, Lcom/sunrise/h/c;->o:Z

    iput-object v3, p0, Lcom/sunrise/h/c;->p:Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/sunrise/h/c;->l:Z

    iput-boolean v1, p0, Lcom/sunrise/h/c;->k:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sunrise/h/c;->q:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/sunrise/h/c;->q:I

    iput p7, p0, Lcom/sunrise/h/c;->h:I

    iput p8, p0, Lcom/sunrise/h/c;->i:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sunrise/h/c;->r:Lcom/sunrise/b/b;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sunrise/h/c;->s:Lcom/sunrise/b/b;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sunrise/h/c;->k:Z

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sunrise/h/c;->l:Z

    :goto_1
    if-eqz p11, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sunrise/h/c;->j:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sunrise/h/c;->d()Lcom/sunrise/b/b;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/sunrise/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v3}, Lcom/sunrise/b/b;->i()Z

    move-result v2

    move v6, v2

    move-object v2, v1

    move v1, v6

    :goto_3
    iput-object v2, p0, Lcom/sunrise/h/c;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunrise/h/c;->a()[C

    move-result-object v2

    iput-object v2, p0, Lcom/sunrise/h/c;->m:[C

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p3}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    :cond_4
    const/4 v4, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    :goto_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    move-object v6, v2

    move-object v2, v3

    move-object v3, v6

    :goto_5
    iput-boolean v4, p0, Lcom/sunrise/h/c;->g:Z

    if-eqz v1, :cond_b

    const-class v1, Ljava/lang/String;

    if-ne v3, v1, :cond_b

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, p0, Lcom/sunrise/h/c;->o:Z

    if-eqz p4, :cond_c

    const-class v1, Ljava/lang/Object;

    if-ne v3, v1, :cond_c

    instance-of v1, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_c

    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p4, v1}, Lcom/sunrise/h/c;->a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iput-object v1, p0, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sunrise/h/c;->n:Z

    :goto_7
    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunrise/h/c;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunrise/h/c;->l:Z

    goto/16 :goto_1

    :cond_7
    const-string v1, ""

    iput-object v1, p0, Lcom/sunrise/h/c;->j:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/sunrise/h/c;->f:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    move-object v6, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    instance-of v1, v2, Ljava/lang/Class;

    if-nez v1, :cond_d

    if-eqz p5, :cond_e

    :goto_8
    invoke-static {p4, p5, v2}, Lcom/sunrise/h/c;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-eq v1, v2, :cond_10

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    invoke-static {v1}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v1

    :cond_d
    :goto_9
    iput-object v2, p0, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    iput-object v3, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sunrise/h/c;->n:Z

    goto :goto_7

    :cond_e
    move-object p5, p4

    goto :goto_8

    :cond_f
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_10

    invoke-static {v1}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v2, v1

    goto :goto_9
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sunrise/h/c;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {v1}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sunrise/h/k;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    move v2, v3

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget-object v6, v5, v2

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object p2, v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object v2, v1

    :goto_2
    move v7, v3

    move v5, v3

    :goto_3
    array-length v1, v8

    if-ge v7, v1, :cond_9

    if-eqz p1, :cond_9

    aget-object v1, v8, v7

    instance-of v6, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_8

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    move v6, v3

    :goto_4
    array-length v9, v2

    if-ge v6, v9, :cond_8

    aget-object v9, v2, v6

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v4, :cond_5

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    :cond_5
    aget-object v5, v4, v6

    aput-object v5, v8, v7

    const/4 v5, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    move-object p1, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_0

    new-instance p2, Lcom/sunrise/h/i;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, v8, v1, v0}, Lcom/sunrise/h/i;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_a
    move-object p1, v4

    move-object v2, v4

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v4, v3, :cond_4

    invoke-interface {v3}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget-object v4, v1, v0

    if-ne v4, p1, :cond_2

    aget-object v0, v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/h/c;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    iget v0, p0, Lcom/sunrise/h/c;->q:I

    iget v4, p1, Lcom/sunrise/h/c;->q:I

    if-ge v0, v4, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sunrise/h/c;->q:I

    iget v4, p1, Lcom/sunrise/h/c;->q:I

    if-gt v0, v4, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunrise/h/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunrise/h/c;->c()Ljava/lang/Class;

    move-result-object v4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    if-eq v0, v4, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    if-ne v0, v4, :cond_7

    move v0, v1

    :goto_1
    iget-object v4, p1, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    move v2, v1

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_0

    :cond_6
    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    move v1, v3

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    iget-object v0, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_a

    move v1, v3

    goto :goto_0

    :cond_a
    iget-object v0, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v1, v3

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a()[C
    .locals 7

    const/16 v6, 0x22

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    iget-object v2, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v6, v1, v5

    add-int/lit8 v2, v0, 0x1

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    return-object v1
.end method

.method public b()Ljava/lang/reflect/Member;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method protected c()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/sunrise/h/c;

    invoke-virtual {p0, p1}, Lcom/sunrise/h/c;->a(Lcom/sunrise/h/c;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/sunrise/b/b;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/h/c;->r:Lcom/sunrise/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->r:Lcom/sunrise/b/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->s:Lcom/sunrise/b/b;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/h/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/h/c;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/h/c;->c:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    return-object v0
.end method
