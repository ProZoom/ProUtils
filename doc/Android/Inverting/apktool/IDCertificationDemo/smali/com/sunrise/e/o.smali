.class public Lcom/sunrise/e/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# static fields
.field public static final a:Lcom/sunrise/e/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/e/o;

    invoke-direct {v0}, Lcom/sunrise/e/o;-><init>()V

    sput-object v0, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Object;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/io/Serializable;

    if-eq p2, v0, :cond_3

    invoke-virtual {p1, p2}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3}, Lcom/sunrise/d/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
