package сom.matzakov.sweater.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import сom.matzakov.sweater.domain.User;


public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findByActivationCode(String code);
}
