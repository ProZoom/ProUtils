.class public final Lcom/sunrise/e/u;
.super Lcom/sunrise/e/l;


# instance fields
.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:Lcom/sunrise/d/a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/sunrise/d/a;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sunrise/e/l;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    iput-object p1, p0, Lcom/sunrise/e/u;->e:Lcom/sunrise/d/a;

    iput p3, p0, Lcom/sunrise/e/u;->c:I

    iput-object p2, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/e/u;->f:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sunrise/e/u;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/sunrise/e/u;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/sunrise/e/l;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    iput-object v1, p0, Lcom/sunrise/e/u;->e:Lcom/sunrise/d/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/e/u;->c:I

    iput-object v1, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/sunrise/e/u;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sunrise/e/u;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/sunrise/e/u;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/sunrise/e/l;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    iput-object v1, p0, Lcom/sunrise/e/u;->e:Lcom/sunrise/d/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/e/u;->c:I

    iput-object v1, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/sunrise/e/u;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunrise/e/u;->g:Ljava/util/Map;

    iput-object v1, p0, Lcom/sunrise/e/u;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/sunrise/e/u;->g:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/e/u;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/sunrise/e/u;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunrise/e/u;->h:Ljava/util/Collection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/e/u;->h:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    iget v1, p0, Lcom/sunrise/e/u;->c:I

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    instance-of v0, v0, Lcom/sunrise/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/u;->d:Ljava/util/List;

    check-cast v0, Lcom/sunrise/a/b;

    invoke-virtual {v0}, Lcom/sunrise/a/b;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/sunrise/e/u;->c:I

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/a/b;->c()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sunrise/a/b;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/sunrise/e/u;->e:Lcom/sunrise/d/a;

    invoke-virtual {v2}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    iget v0, p0, Lcom/sunrise/e/u;->c:I

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method
