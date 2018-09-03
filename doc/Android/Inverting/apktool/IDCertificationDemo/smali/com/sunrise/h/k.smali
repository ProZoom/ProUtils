.class public Lcom/sunrise/h/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Z

.field private static i:Ljava/lang/Class;

.field private static j:Ljava/util/concurrent/ConcurrentMap;

.field private static k:Ljava/lang/Class;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sunrise/h/k;->a:Z

    sput-boolean v1, Lcom/sunrise/h/k;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sunrise/h/k;->c:Z

    sput-boolean v1, Lcom/sunrise/h/k;->d:Z

    sput-boolean v1, Lcom/sunrise/h/k;->f:Z

    sput-boolean v1, Lcom/sunrise/h/k;->h:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lcom/sunrise/h/k;->a()V

    sput-boolean v1, Lcom/sunrise/h/k;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/sunrise/b/b;
    .locals 14

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v0, v5

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v5

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    move v3, v1

    :goto_1
    if-ge v3, v9, :cond_3

    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v0, v11

    array-length v2, v6

    if-eq v0, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    move v0, v1

    :goto_2
    array-length v12, v6

    if-ge v0, v12, :cond_5

    aget-object v12, v11, v0

    aget-object v13, v6, v0

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move v0, v1

    :goto_3
    if-eqz v0, :cond_0

    const-class v0, Lcom/sunrise/b/b;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sunrise/b/b;

    if-eqz v0, :cond_0

    :goto_4
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;Lcom/sunrise/a/k;)Lcom/sunrise/f/av;
    .locals 10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-class v0, Lcom/sunrise/b/d;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sunrise/b/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v3}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/util/Map;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Lcom/sunrise/b/d;Ljava/util/Map;Ljava/util/Map;ZLcom/sunrise/a/k;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Lcom/sunrise/h/c;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sunrise/b/d;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/sunrise/b/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v6

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/b/d;->e()[Lcom/sunrise/f/ba;

    move-result-object v4

    invoke-static {v4}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v6

    move-object v9, v0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    array-length v0, v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Lcom/sunrise/b/d;Ljava/util/Map;Ljava/util/Map;ZLcom/sunrise/a/k;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Lcom/sunrise/h/c;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v7

    :cond_1
    new-instance v2, Lcom/sunrise/f/av;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v9

    invoke-direct/range {v2 .. v8}, Lcom/sunrise/f/av;-><init>(Ljava/lang/Class;Lcom/sunrise/b/d;Ljava/lang/String;I[Lcom/sunrise/h/c;[Lcom/sunrise/h/c;)V

    return-object v2

    :cond_2
    move-object v9, v6

    move-object v0, v6

    move v6, v4

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_6
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    sget-object v1, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/sunrise/h/k;->a(Ljava/util/Map;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v1

    goto :goto_0

    :cond_6
    const-class v1, [B

    if-ne p1, v1, :cond_7

    invoke-static {p0}, Lcom/sunrise/h/k;->n(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_8

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_9

    :cond_8
    invoke-static {p0}, Lcom/sunrise/h/k;->o(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_a

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_b

    :cond_a
    invoke-static {p0}, Lcom/sunrise/h/k;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_c

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_d

    :cond_c
    invoke-static {p0}, Lcom/sunrise/h/k;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_f

    :cond_e
    invoke-static {p0}, Lcom/sunrise/h/k;->m(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_10

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_11

    :cond_10
    invoke-static {p0}, Lcom/sunrise/h/k;->l(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    :cond_11
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_12

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_13

    :cond_12
    invoke-static {p0}, Lcom/sunrise/h/k;->g(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    :cond_13
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_14

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_15

    :cond_14
    invoke-static {p0}, Lcom/sunrise/h/k;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_15
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_16

    invoke-static {p0}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_16
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_17

    invoke-static {p0}, Lcom/sunrise/h/k;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :cond_17
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_18

    invoke-static {p0}, Lcom/sunrise/h/k;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    :cond_18
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_19

    invoke-static {p0}, Lcom/sunrise/h/k;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    :cond_19
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_1a

    invoke-static {p0}, Lcom/sunrise/h/k;->j(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    goto/16 :goto_0

    :cond_1a
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_1b

    invoke-static {p0}, Lcom/sunrise/h/k;->k(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0, p1, p2}, Lcom/sunrise/h/k;->b(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    :cond_1c
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/sunrise/h/k;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    const-class v0, Ljava/util/Calendar;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/sunrise/a/a;->a:Ljava/util/TimeZone;

    sget-object v2, Lcom/sunrise/a/a;->b:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_1d
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1e
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_21

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    move-object p0, v0

    goto/16 :goto_0

    :cond_20
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_21

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    :cond_21
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v0, Ljava/util/Set;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/HashSet;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/TreeSet;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/List;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    if-ne v1, v0, :cond_4

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/Set;

    if-eq v1, v0, :cond_1

    const-class v0, Ljava/util/HashSet;

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-class v0, Ljava/util/TreeSet;

    if-ne v1, v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/Map;

    if-eq v1, v0, :cond_5

    const-class v0, Ljava/util/HashMap;

    if-ne v1, v0, :cond_8

    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v3, v0, v5

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v5, :cond_a

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_a

    invoke-static {p0, v1, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object p0, v1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p1, v0, :cond_1

    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "methodName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "fileName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "lineNumber"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-nez v3, :cond_0

    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sunrise/h/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, v1, p2}, Lcom/sunrise/h/k;->a(Ljava/util/Map;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/sunrise/a/e;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sunrise/a/e;

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/sunrise/a/e;

    invoke-direct {v0, p0}, Lcom/sunrise/a/e;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    invoke-static {}, Lcom/sunrise/d/j;->a()Lcom/sunrise/d/j;

    move-result-object p2

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p2, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    instance-of v2, v0, Lcom/sunrise/e/n;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/sunrise/e/n;

    :goto_3
    if-nez v0, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "can not get javaBeanDeserializer"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v0, p0, p2}, Lcom/sunrise/e/n;->a(Ljava/util/Map;Lcom/sunrise/d/j;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/sunrise/h/k;->b:Z

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 4

    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;Lcom/sunrise/b/d;Ljava/util/Map;Ljava/util/Map;ZLcom/sunrise/a/k;)Ljava/util/List;
    .locals 19

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_16

    aget-object v4, v16, v14

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/ClassLoader;

    if-eq v2, v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getMetaClass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groovy.lang.MetaClass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/b;

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/sunrise/b/b;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_5

    invoke-interface {v11}, Lcom/sunrise/b/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

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

    if-eqz v2, :cond_4

    invoke-interface {v11}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_3
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-interface {v11}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v13

    :cond_5
    const-string v2, "get"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const-string v2, "getClass"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x200

    if-le v2, v3, :cond_10

    :cond_6
    sget-boolean v2, Lcom/sunrise/h/k;->a:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const/4 v3, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sunrise/h/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_28

    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/b;

    if-eqz v2, :cond_27

    invoke-interface {v2}, Lcom/sunrise/b/b;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v2}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v2}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v2}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_7
    invoke-interface {v2}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v2}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v13

    move-object v12, v2

    :goto_5
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_8
    if-eqz p5, :cond_9

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_9
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v2, "is"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-boolean v2, Lcom/sunrise/h/k;->a:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const/4 v3, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sunrise/h/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_7
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_b

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    :cond_b
    const/4 v2, 0x0

    if-eqz v5, :cond_26

    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/b;

    if-eqz v2, :cond_25

    invoke-interface {v2}, Lcom/sunrise/b/b;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/sunrise/b/b;->a()I

    move-result v8

    invoke-interface {v2}, Lcom/sunrise/b/b;->f()[Lcom/sunrise/f/ba;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/f/ba;->a([Lcom/sunrise/f/ba;)I

    move-result v9

    invoke-interface {v2}, Lcom/sunrise/b/b;->g()[Lcom/sunrise/d/c;

    move-result-object v6

    invoke-static {v6}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v10

    invoke-interface {v2}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_c
    invoke-interface {v2}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v2}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v13

    move-object v12, v2

    :goto_8
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    :cond_d
    if-eqz p5, :cond_e

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_e
    new-instance v2, Lcom/sunrise/h/c;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_10
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_11

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_4

    :cond_11
    const/16 v3, 0x66

    if-ne v2, v3, :cond_12

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_4

    :cond_12
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_4

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_14
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_15

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_7

    :cond_15
    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_7

    :cond_16
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_9
    move/from16 v0, v17

    if-ge v14, v0, :cond_1c

    aget-object v5, v16, v14

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    :goto_a
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_9

    :cond_18
    const-class v2, Lcom/sunrise/b/b;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/sunrise/b/b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    if-eqz v12, :cond_24

    invoke-interface {v12}, Lcom/sunrise/b/b;->d()Z

    move-result v3

    if-eqz v3, :cond_17

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

    if-eqz v3, :cond_19

    invoke-interface {v12}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v2

    :cond_19
    invoke-interface {v12}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v12}, Lcom/sunrise/b/b;->h()Ljava/lang/String;

    move-result-object v13

    move-object v3, v2

    :goto_b
    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v3, v2

    :cond_1a
    if-eqz p5, :cond_1b

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/sunrise/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1b
    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Lcom/sunrise/h/c;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/sunrise/h/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/sunrise/b/b;Lcom/sunrise/b/b;Ljava/lang/String;)V

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-class v2, Lcom/sunrise/b/d;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sunrise/b/d;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Lcom/sunrise/b/d;->b()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    array-length v2, v3

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    array-length v6, v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_1d

    aget-object v7, v3, v4

    invoke-interface {v15, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const/4 v2, 0x0

    :cond_1d
    move-object v4, v3

    :goto_d
    if-eqz v2, :cond_20

    array-length v6, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v6, :cond_22

    aget-object v2, v4, v3

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunrise/h/c;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1f
    const/4 v2, 0x0

    move-object v4, v3

    goto :goto_d

    :cond_20
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunrise/h/c;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_21
    if-eqz p4, :cond_22

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_22
    return-object v5

    :cond_23
    move v2, v4

    move-object v4, v3

    goto :goto_d

    :cond_24
    move-object v3, v2

    goto/16 :goto_b

    :cond_25
    move-object v12, v2

    goto/16 :goto_8

    :cond_26
    move-object v12, v2

    goto/16 :goto_8

    :cond_27
    move-object v12, v2

    goto/16 :goto_5

    :cond_28
    move-object v12, v2

    goto/16 :goto_5

    :cond_29
    move-object v11, v2

    goto/16 :goto_2
.end method

.method private static a()V
    .locals 3

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sunrise/h/k;->j:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    sget-boolean v0, Lcom/sunrise/h/k;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sunrise/h/k;->c:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lcom/sunrise/h/k;->k:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sunrise/h/k;->l:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.nio.file.Path"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/k;->k:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/sunrise/h/k;->k:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sunrise/h/k;->k:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sunrise/h/k;->l:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/sunrise/b/d;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sunrise/b/d;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sunrise/b/d;->c()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/sunrise/b/d;->d()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/reflect/Type;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/sunrise/h/k;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 1

    const-class v0, Lcom/sunrise/b/d;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sunrise/b/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sunrise/b/d;->f()[Lcom/sunrise/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/d/c;->a([Lcom/sunrise/d/c;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to char, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to char, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/sunrise/h/k;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/k;->i:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v1, Lcom/sunrise/h/k;->h:Z

    :cond_0
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/sunrise/h/k;->i:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, v0, v1

    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/sunrise/h/k;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v1, Lcom/sunrise/h/k;->h:Z

    throw v0
.end method

.method public static d(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "can not create ASMParser"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "can not create ASMParser"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v0, Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_2

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v0

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 4

    invoke-static {p0}, Lcom/sunrise/h/k;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/util/AbstractCollection;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/Collection;

    if-ne v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_5
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_1
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instane error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/lang/Object;)Ljava/util/Date;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/sunrise/d/g;

    invoke-direct {v2, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/sunrise/d/g;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    const-string v2, "/Date("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ")/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/sunrise/a/a;->b:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lcom/sunrise/a/a;->a:Ljava/util/TimeZone;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    const-string v1, "yyyy-MM-dd"

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_8

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_1

    :cond_8
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to Date, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "oracle.sql.TIMESTAMP"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sunrise/h/k;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/sunrise/h/k;->d:Z

    if-nez v1, :cond_c

    :try_start_2
    const-string v1, "toJdbc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/k;->e:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sput-boolean v4, Lcom/sunrise/h/k;->d:Z

    :cond_c
    :goto_2
    :try_start_3
    sget-object v0, Lcom/sunrise/h/k;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sput-boolean v4, Lcom/sunrise/h/k;->d:Z

    goto :goto_2

    :catchall_1
    move-exception v0

    sput-boolean v4, Lcom/sunrise/h/k;->d:Z

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    const-string v1, "oracle.sql.DATE"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/sunrise/h/k;->g:Ljava/lang/reflect/Method;

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/sunrise/h/k;->f:Z

    if-nez v1, :cond_e

    :try_start_4
    const-string v1, "toJdbc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sunrise/h/k;->g:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sput-boolean v4, Lcom/sunrise/h/k;->f:Z

    :cond_e
    :goto_3
    :try_start_5
    sget-object v0, Lcom/sunrise/h/k;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sput-boolean v4, Lcom/sunrise/h/k;->f:Z

    goto :goto_3

    :catchall_2
    move-exception v0

    sput-boolean v4, Lcom/sunrise/h/k;->f:Z

    throw v0

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static j(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object p0, v4

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/sql/Date;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/sql/Date;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_1
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v4

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_6
    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_8
    move-wide v0, v2

    goto :goto_1
.end method

.method public static k(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object p0, v4

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/sql/Timestamp;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/sql/Timestamp;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_1
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v4

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_6
    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_8
    move-wide v0, v2

    goto :goto_1
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Lcom/sunrise/d/g;

    invoke-direct {v2, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/sunrise/d/g;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(Ljava/lang/Object;)[B
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p0, [B

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sunrise/h/d;->b(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    goto :goto_0

    :cond_5
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
