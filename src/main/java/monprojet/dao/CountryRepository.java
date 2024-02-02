package monprojet.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import monprojet.entity.Country;
import org.springframework.data.jpa.repository.Query;


// This will be AUTO IMPLEMENTED by Spring 
//

public interface CountryRepository extends JpaRepository<Country, Integer> {
@Query(value = "SELECT SUM(City.population)AS populationTotale "
    +"From Country "
    +"INNER JOIN City ON Country.id = City.country_id "
    +"WHERE Country.id = :countryId "
    +"GROUP BY Country_id ",
    nativeQuery=true)
public Integer getPopulation(Integer countryId);

@Query(value = "SELECT SUM(City.population)AS populationTotale "
    +"From Country "
    +"INNER JOIN City ON Country.id = City.country_id "
    +"GROUP BY Country_id ",
    nativeQuery = true)
public List<Population> getPopulation();    

}
