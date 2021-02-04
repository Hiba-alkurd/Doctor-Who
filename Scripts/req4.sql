
UPDATE tblEpisode
SET Title = Concat(Title,'_CANCELLED') 
WHERE DoctorId is Null;