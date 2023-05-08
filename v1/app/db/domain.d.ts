interface Page {
  parentId: string;
  title: string;
  name: string;
  slug: string;
  pageId?: string;
}

interface Meta {
  title: string;
  description: string;
  keywords: string;
  pageId: string;
  metaId?: string;
}

interface News {
  title: string;
  titleSecondary: string;
  text: string;
  textSecondary: string;
  img: string;
  video: string;
  published: boolean;
  newsId?: string;
}

interface Result {
  name: string;
  title: string;
  text: string;
  resultId?: string;
}

interface Social {
  name: string;
  key: string;
  link: string;
  socialId?: string;
}

interface Support {
  name: string;
  key: string;
  title: string;
  text: string;
  supportId?: string;
}

interface Team {
  firstName: string;
  lastName: string;
  middleName: string;
  position: string;
  bio: string;
  img: string;
  teamId?: string;
}
