.class public Lcom/sunrise/a/b;
.super Lcom/sunrise/a/a;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# instance fields
.field protected transient h:Ljava/lang/Object;

.field protected transient i:Ljava/lang/reflect/Type;

.field private final j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/a/a;-><init>()V

    iput-object p1, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sunrise/a/e;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sunrise/a/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sunrise/a/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/sunrise/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/a/e;

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/a/b;->i:Ljava/lang/reflect/Type;

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->m(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public c(I)Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/h/k;->l(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->i:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/a/b;->h:Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/sunrise/a/b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/sunrise/a/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/sunrise/a/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
