from sqlalchemy import Column, Integer, String, DateTime, SmallInteger, ForeignKey
from sqlalchemy.orm import relationship
from api.database import Base

class Profiles(Base):
    """Defines profile data"""

    __tablename__ = 'profiles'

    id = Column(Integer, primary_key=True)
    first_name = Column(String(50))
    last_name = Column(String(50))
    photo_url = Column(String(100))
    causes = Column(String(200))
    skills = Column(String(200))

    def __init__(self, first_name, last_name, photo_url=None, causes=None, skills=None):
        self.first_name = first_name
        self.last_name = last_name
        self.photo_url = photo_url
        self.causes = causes
        self.skills = skills

    def __repr__(self):
        return '<Profile %r %r>' % (self.first_name, self.last_name)


class Npos(Base):
    """Defines NPO data"""

    __tablename__ = 'npos'

    id = Column(Integer, primary_key=True)
    org_name = Column(String(50))
    logo = Column(String(50))
    purpose = Column(String(50))
    impact = Column(String(50))
    address = Column(String(100))
    url = Column(String(200))

    def __init__(self, org_name, logo=None, purpose=None, impact=None, address=None,
                    url=None):
        self.org_name = org_name
        self.logo = logo
        self.purpose = purpose
        self.impact = impact
        self.address = address
        self.url = url

    def __repr__(self):
        return '<Npo %r>' % (self.org_name)


class Events(Base):
    """Defines all stored events"""

    __tablename__ = 'events'

    id = Column(Integer, primary_key=True)
    sponsor = Column(Integer, ForeignKey('npos.id'))
    title = Column(String(50))
    photo = Column(String(50))
    description = Column(String(50))
    date = Column(DateTime)
    volunteers = Column(String(500))
    address = Column(String(50))
    causes = Column(String(50))
    skills = Column(String(50))
    event_rating = Column(SmallInteger)

    org_name = relationship(Npos, primaryjoin=Npos.id == sponsor)

    def __init__(self, title, address, date, photo=None, description=None, volunteers=None,
                   causes=None, skills=None, event_rating=None):
        self.title = title
        self.address = address
        self.date = data
        self.photo = photo
        self.description = description
        self.volunteers = volunteers
        self.causes = causes
        self.skills = skills
        self.event_rating = event_rating
